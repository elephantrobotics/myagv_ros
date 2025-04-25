#include <vector>
#include <iostream>
#include <iomanip>
#include <time.h>

#include "myagv_odometry/myAGV.h"

const unsigned char header[2] = { 0xfe, 0xfe };

boost::asio::io_service iosev;
boost::asio::serial_port sp(iosev, "/dev/ttyAMA2");

boost::array<double, 36> odom_pose_covariance = {
    {1e-9, 0, 0, 0, 0, 0,
    0, 1e-3, 1e-9, 0, 0, 0,
    0, 0, 1e6, 0, 0, 0,
    0, 0, 0, 1e6, 0, 0,
    0, 0, 0, 0, 1e6, 0,
    0, 0, 0, 0, 0, 1e-9} };
boost::array<double, 36> odom_twist_covariance = {
    {1e-9, 0, 0, 0, 0, 0,
    0, 1e-3, 1e-9, 0, 0, 0,
    0, 0, 1e6, 0, 0, 0,
    0, 0, 0, 1e6, 0, 0,
    0, 0, 0, 0, 1e6, 0,
    0, 0, 0, 0, 0, 1e-9} };

MyAGV::MyAGV()
{
    x = 0.0;
    y = 0.0;
    theta = 0.0;

    vx = 0.0;
    vy = 0.0;
    vtheta = 0.0;
}

MyAGV::~MyAGV()
{
    ;
}

bool MyAGV::init()
{
    sp.set_option(boost::asio::serial_port::baud_rate(115200));
    sp.set_option(boost::asio::serial_port::flow_control(boost::asio::serial_port::flow_control::none));
    sp.set_option(boost::asio::serial_port::parity(boost::asio::serial_port::parity::none));
    sp.set_option(boost::asio::serial_port::stop_bits(boost::asio::serial_port::stop_bits::one));
    sp.set_option(boost::asio::serial_port::character_size(8));
    clearSerialBuffer();
    ros::Time::init();
 
    lastTime = ros::Time::now();
    pub_imu =  n.advertise<sensor_msgs::Imu>("imu", 20);
    pub_odom = n.advertise<nav_msgs::Odometry>("odom", 50); // used to be 50
    pub_voltage = n.advertise<std_msgs::Float32>("Voltage", 10);
    pub_voltage_backup = n.advertise<std_msgs::Float32>("voltage_backup", 10);
    restore(); //first restore,abort current err,don't restore
    return true;
}

void MyAGV::restore()
{
    // Clear serial port buffer by reading at least 1 byte
    boost::asio::streambuf clear_buffer; 
    boost::asio::read(sp, clear_buffer, boost::asio::transfer_at_least(1));
    
    // Pause for 100 milliseconds
    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    // Motor Stall Recovery
    unsigned char cmd[6] = {0xfe, 0xfe, 0x01, 0x00, 0x01, 0x02};
    
    std::cout << "Sending data: ";
    for (int i = 0; i < 6; ++i) 
    {
        std::cout << std::hex << std::setfill('0') << std::setw(2) << (int)(cmd[i]) << " ";
    }
    std::cout << std::dec << std::endl;
    // Write command data to the serial port
    boost::asio::write(sp, boost::asio::buffer(cmd));
    std::this_thread::sleep_for(std::chrono::milliseconds(50));
    return;
}

void MyAGV::restoreRun()
{
    int res = 0;
    std::cout << "if you want restore run,pls input 1,then press enter" << std::endl;
    while(res != 1) {
        std::cin >> res;
        std::cout <<  "press enter" << std::endl;
        std::cout << res;
    }
    restore();
    std::cout <<  "restore finished" << std::endl;
    return;
}

void MyAGV::clearSerialBuffer() 
{
    int fd = sp.native_handle();
    if (tcflush(fd, TCIOFLUSH) < 0) {
        perror("Failed to clear serial buffer");
    } else {
        std::cout << "Serial buffer cleared successfully" << std::endl;
    }					   
    return;
}

bool MyAGV::readSpeed()
{
    int i, length = 0, count = 0;
    unsigned char checkSum;
    unsigned char buf_header[1] = {0};
    unsigned char buf[TOTAL_RECEIVE_SIZE] = {0};

    size_t ret;
    boost::system::error_code er2;
    bool header_found = false;
    while (!header_found) {
        ++count;
        ret = boost::asio::read(sp, boost::asio::buffer(buf_header), er2);
        if (ret != 1) {
            continue;
        }
        if (buf_header[0] != header[0]) {
            continue;
        }
        bool header_2_found = false;
        while (!header_2_found) {
            ret = boost::asio::read(sp, boost::asio::buffer(buf_header), er2);
            if (ret != 1) {
                continue;
            }
            if (buf_header[0] != header[0]) {
                continue;
            }
            header_2_found = true;
        }
        header_found = true;
    }

    ret = boost::asio::read(sp, boost::asio::buffer(buf), er2);  // ready break
	if ((buf[0] + buf[1] + buf[2] + buf[3]) == buf[4]) {
        int wheel_num = 0;
        for (int i = 0; i < 4; ++i) {
            if (buf[i] == 1) {
                wheel_num = i+1;
                ROS_ERROR("ERROR %d wheel current > 2000", wheel_num);
            }
        }
        restoreRun();
        return false;
    }
    if (ret != TOTAL_RECEIVE_SIZE) {
        ROS_ERROR("Read error %zu",ret);
        return false;
    }

    int index = 0;
    int check = 0;//ilter time older than imu message buffer
    for (int i = 0; i < (TOTAL_RECEIVE_SIZE-1); ++i)
        check += buf[index + i];
    if (check % 256 != buf[index + (TOTAL_RECEIVE_SIZE-1)])
	{
		ROS_ERROR("Error:Serial port verification failed! check:%d -- %d ",check,buf[index+(TOTAL_RECEIVE_SIZE-1)]);	
    	return false;
	}

    vx = (static_cast<double>(buf[index]) - 128.0) * 0.01;
    vy = (static_cast<double>(buf[index + 1]) - 128.0) * 0.01;
    vtheta = (static_cast<double>(buf[index + 2]) - 128.0) * 0.01;

    imu_data.linear_acceleration.x = ((buf[index + 3] + buf[index + 4] * 256 ) - 10000) * 0.001;
    imu_data.linear_acceleration.y = ((buf[index + 5] + buf[index + 6] * 256 ) - 10000) * 0.001;
    imu_data.linear_acceleration.z = ((buf[index + 7] + buf[index + 8] * 256 ) - 10000) * 0.001;

    imu_data.angular_velocity.x  = ((buf[index + 9] + buf[index + 10] * 256 ) - 10000) * 0.1;
    imu_data.angular_velocity.y = ((buf[index + 11] + buf[index + 12] * 256 ) - 10000) * 0.1;
    imu_data.angular_velocity.z = ((buf[index + 13] + buf[index + 14] * 256 ) - 10000) * 0.1;

    uint8_t highNibble = (buf[index + 15] >> 4) & 0x0F;  

    Battery_voltage = (float)buf[index + 16] / 10.0f;

    bool isBatteryWithBackup = (highNibble == 0x03);
    if (isBatteryWithBackup){
        Backup_Battery_voltage = (float)buf[index + 17] / 10.0f;
    }else{
        Backup_Battery_voltage = 0.0f;
    }

    roll  = (int16_t)((buf[index + 26] << 8) | (buf[index + 27] & 0xff)) * 0.01;
    pitch = (int16_t)((buf[index + 28] << 8) | (buf[index + 29] & 0xff)) * 0.01;
    yaw   = (int16_t)((buf[index + 30] << 8) | (buf[index + 31] & 0xff)) * 0.01;

    //ROS_INFO("yaw:%f",yaw);

    if (!initialized)
    {
        present_theta = last_theta = yaw;
        initialized = true;
    }
    present_theta = yaw;
    delta_theta = present_theta - last_theta;
    if(delta_theta< 0.1 && delta_theta > -0.1) delta_theta=0;
    accumulated_theta += delta_theta;
    //ROS_INFO("accumulated_theta:%f",accumulated_theta);
    last_theta = present_theta;

    //std::cout << "Received message is: "  << "|" << vx << "," << vy << "," << vtheta << "|"
                                      //  << imu_data.linear_acceleration.x << "," << imu_data.linear_acceleration.y << "," << imu_data.linear_acceleration.z << "|"
                                   //  << imu_data.angular_velocity.x << "," << imu_data.angular_velocity.y << "," << imu_data.angular_velocity.z << std::endl;
    //std::cout << "current pos is: " << x << "," << y << "," << theta << std::endl;

    return true;
}

void MyAGV::writeSpeed(double movex, double movey, double rot)
{
    if (movex > 1.0) movex = 1.0;
    if (movex < -1.0) movex = -1.0;
    if (movey > 1.0) movey = 1.0;
    if (movey < -1.0) movey = -1.0;
    if (rot > 1.0) rot = 1.0;
    if (rot < -1.0) rot = -1.0;

    unsigned char x_send = static_cast<signed char>(movex * 100) + 128;
    unsigned char y_send = static_cast<signed char>(movey * 100) + 128;
    unsigned char rot_send = static_cast<signed char>(rot * 100) + 128;
    unsigned char check = x_send + y_send + rot_send;

    char buf[8] = { 0 };
    buf[0] = header[0];
    buf[1] = header[1];
    buf[2] = x_send;
    buf[3] = y_send;
    buf[4] = rot_send;
    buf[5] = check;

    boost::asio::write(sp, boost::asio::buffer(buf));
}

void MyAGV::Publish_Voltage()
{
    std_msgs::Float32 voltage_msg,voltage_backup_msg;
    voltage_msg.data = Battery_voltage;
    pub_voltage.publish(voltage_msg);

    voltage_backup_msg.data = Backup_Battery_voltage;
    pub_voltage_backup.publish(voltage_backup_msg);
}

void MyAGV::publisherImuSensor()
{
    sensor_msgs::Imu ImuSensor;

    ImuSensor.header.stamp = ros::Time::now(); 
    ImuSensor.header.frame_id = "imu_link";

    tf::Quaternion qua;
    qua.setRPY(0, 0, yaw * M_PI / 180.0);

    ImuSensor.orientation.x = qua[0]; 
    ImuSensor.orientation.y = qua[1]; 
    ImuSensor.orientation.z = qua[2];
    ImuSensor.orientation.w = qua[3];

    ImuSensor.angular_velocity.x = imu_data.angular_velocity.x;		
    ImuSensor.angular_velocity.y = imu_data.angular_velocity.y;		
    ImuSensor.angular_velocity.z = imu_data.angular_velocity.z;

    ImuSensor.linear_acceleration.x = imu_data.linear_acceleration.x;
    ImuSensor.linear_acceleration.y = imu_data.linear_acceleration.y;
    ImuSensor.linear_acceleration.z = imu_data.linear_acceleration.z;

    ImuSensor.orientation_covariance[0] = 1e6;
    ImuSensor.orientation_covariance[4] = 1e6;
    ImuSensor.orientation_covariance[8] = 1e-6;

    ImuSensor.angular_velocity_covariance[0] = 1e6;
    ImuSensor.angular_velocity_covariance[4] = 1e6;
    ImuSensor.angular_velocity_covariance[8] = 1e-6;

    pub_imu.publish(ImuSensor); 
}

void MyAGV::publisherOdom(double dt)
{   
    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = ros::Time::now();
    odom_trans.header.frame_id = "odom";
    odom_trans.child_frame_id = "base_footprint";

    geometry_msgs::Quaternion odom_quat;

    theta = accumulated_theta * M_PI / 180.0;
    odom_quat = tf::createQuaternionMsgFromYaw(theta);

    double delta_x = (vx * cos(theta) - vy * sin(theta)) * dt;
    double delta_y = (vx * sin(theta) + vy * cos(theta)) * dt;

    x += delta_x;
    y += delta_y;

    odom_trans.transform.translation.x = x; 
    odom_trans.transform.translation.y = y; 
    odom_trans.transform.translation.z = 0.0;

    odom_trans.transform.rotation = odom_quat;

    //odomBroadcaster.sendTransform(odom_trans);    // robot_pose_ekf ros package instead

    nav_msgs::Odometry msgl;
    msgl.header.stamp = ros::Time::now();
    msgl.header.frame_id = "odom";

    msgl.pose.pose.position.x = x;
    msgl.pose.pose.position.y = y;
    msgl.pose.pose.position.z = 0.0;
    msgl.pose.pose.orientation = odom_quat;
    msgl.pose.covariance = odom_pose_covariance;

    msgl.child_frame_id = "base_footprint";
    msgl.twist.twist.linear.x = vx;
    msgl.twist.twist.linear.y = vy;
    msgl.twist.twist.angular.z = vtheta;
    msgl.twist.covariance = odom_twist_covariance;

    pub_odom.publish(msgl);
}

void MyAGV::execute(double linearX, double linearY, double angularZ)
{   
    currentTime = ros::Time::now();    
    double dt = (currentTime - lastTime).toSec();
    if (true ==  readSpeed()) 
    {    
        writeSpeed(linearX, linearY, angularZ);
        publisherOdom(dt);
        //ROS_INFO("dt:%f",dt);
        publisherImuSensor();
        Publish_Voltage();
    } 
    lastTime = currentTime;
}


