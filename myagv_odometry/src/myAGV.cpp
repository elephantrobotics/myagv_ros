#include <vector>
#include <iostream>
#include <iomanip>
#include <time.h>

#include "myagv_odometry/myAGV.h"
#include "std_msgs/Int8.h"

//const unsigned char ender[2] = { 0x0d, 0x0a };
const unsigned char header[2] = { 0xfe, 0xfe };
//const int SPEED_INFO = 0xa55a;
//const int GET_SPEED = 0xaaaa;
//const double ROBOT_RADIUS = 105.00;
//const double ROBOT_LENGTH = 210.50;

boost::asio::io_service iosev;
//boost::asio::serial_port sp(iosev, "/dev/ttyUSB0");
boost::asio::serial_port sp(iosev, "/dev/ttyACM0");

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

void send()
{
    ;
}

void receive()
{
    ;
}

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

    ros::Time::init();
    currentTime = ros::Time::now();
    lastTime = ros::Time::now();

    pub = n.advertise<nav_msgs::Odometry>("odom", 50);
    pub_v = n.advertise<std_msgs::Int8>("Voltage", 1000);
    restore(); //first restore,abort current err,don't restore
    return true;
}

void MyAGV::restore()
{
    unsigned char cmd[6] = {0xfe, 0xfe, 0x01, 0x00, 0x01, 0x02};
    boost::asio::write(sp, boost::asio::buffer(cmd));
    return;
}

void MyAGV::restoreRun()
{
    int res = 0;
    std::cout << "if you want restore run,pls input 1,then press enter" << std::endl;
    while(res != 1) {
        std::cin >> res;
        //std::cout << res;
    }
    restore();
    return;
}

bool MyAGV::readSpeed()
{
    int i, length = 0, count = 0;
    unsigned char checkSum;
    unsigned char buf_header[1] = {0};
    unsigned char buf[16] = {0};

    size_t ret;
    boost::system::error_code er2;
    bool header_found = false;
    while (!header_found) {
        ++count;
        ret = boost::asio::read(sp, boost::asio::buffer(buf_header), er2);     
//	    ROS_INFO("start");
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
    //std::cout << std::endl;

    // if (!(buf_header[0] == header[0] && buf_header[1] == header[1]))  {
    //     // not a header
    //     return false;
    // }

    ret = boost::asio::read(sp, boost::asio::buffer(buf), boost::asio::transfer_at_least(4), er2); // ready break
   /* std::cout << "readSpeed: " << ret;
    for (int i = 0; i < ret; ++i) {
        std::cout << std::hex << std::setfill('0') << std::setw(2) << (int)(buf[i]) << " ";
    }
    std::cout << std::endl;*/
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
    if (ret != 16) {
        ROS_ERROR("Read error");
        return false;
    }
    // for (int i = 0; i < ret; ++i) {
    //     std::cout << std::hex << std::setfill('0') << std::setw(2) << (int)(buf[i]) << " ";
    // }
    // std::cout << std::endl;


    // if (ret < 18) {
    //     //ROS_ERROR("Read less error");
    //     return false;
    // }
    // bool header_ok = false;
    // int header_idx = 0;
    // for (int i = 0; i < (ret-17); ++i) {
    //     if (buf[i] == header[0] && buf[i+1] == header[1])  {
    //         header_ok = true;
    //         header_idx = i;
    //         break;
    //     }
    // }
    // if (!header_ok) {
    //     //ROS_ERROR("Cannot find header");
    //     return false;
    // }


    //ROS_INFO("RED BYTES: %ul", ret);
	// if (er2 == boost::asio::error::eof){ 
	// 	// ROS_ERROR("asio error 1");
	// }


    // int index = 0;
    // for (index = 0; index < 40 - 17; ++index)
    // {
    //     if(buf[index] == header[0] && buf[index] == header[1])
    //         break;
    // }

    // if (index == 40 - 18)
    // {
    //     ROS_ERROR("Received message header error!");
    //     //return false;
    // }

    int index = 0;
    //index += 2;
    int check = 0;
    for (int i = 0; i < 15; ++i)
        check += buf[index + i];
    if (check % 256 != buf[index + 15])
	{
		ROS_ERROR("error 3!");	
    	return false;
	}

    vx = (static_cast<double>(buf[index]) - 128.0) * 0.01;
    vy = (static_cast<double>(buf[index + 1]) - 128.0) * 0.01;
    vtheta = (static_cast<double>(buf[index + 2]) - 128.0) * 0.01;

    ax = ((buf[index + 3] + buf[index + 4] * 256 ) - 10000) * 0.001;
    ay = ((buf[index + 5] + buf[index + 6] * 256 ) - 10000) * 0.001;
    az = ((buf[index + 7] + buf[index + 8] * 256 ) - 10000) * 0.001;

    wx = ((buf[index + 9] + buf[index + 10] * 256 ) - 10000) * 0.1;
    wy = ((buf[index + 11] + buf[index + 12] * 256 ) - 10000) * 0.1;
    wz = ((buf[index + 13] + buf[index + 14] * 256 ) - 10000) * 0.1;

    currentTime = ros::Time::now();

    double dt = (currentTime - lastTime).toSec();
    double delta_x = (vx * cos(theta) - vy * sin(theta)) * dt;
    double delta_y = (vx * sin(theta) + vy * cos(theta)) * dt;
    double delta_th = vtheta * dt;

    x += delta_x;
    y += delta_y;
    theta += delta_th;
    lastTime = currentTime;

    // std::cout << "Received message is: " << dt << "|" << vx << "," << vy << "," << vtheta << "|"
    //                                       << ax << "," << ay << "," << az << "|"
    //                                     << wx << "," << wy << "," << wz << std::endl;
    // std::cout << "current pos is: " << x << "," << y << "," << theta << std::endl;

    return true;
}

void MyAGV::writeSpeed(double movex, double movey, double rot)
{
    if (movex == 10 && movey == 10 && rot == 10)
    {
        char buf[7] = {0xfe, 0xfe ,0x01 ,0x01 ,0x01 ,0x03};
        boost::asio::write(sp, boost::asio::buffer(buf));
        unsigned char buf_header[1] = {0};

        size_t ret;
        boost::system::error_code er2;
        bool header_found = false;
        time_t now_t = time(NULL);
        while (true) {
            
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
            ret = boost::asio::read(sp, boost::asio::buffer(buf_header), er2);
            if (buf_header[0] == 0x01)
            {
                ret = boost::asio::read(sp, boost::asio::buffer(buf_header), er2);
                if (buf_header[0] == 0x01)
                {
                    ret = boost::asio::read(sp, boost::asio::buffer(buf_header), er2);
                    std_msgs::Int8 msg;
                    msg.data = (int)buf_header[0] / 10;
                    ROS_INFO("Voltage: %d", msg.data);
                    pub_v.publish(msg);
                    break;
                }
            }
            if (time(NULL) - now_t > 3)
            {
                ROS_ERROR("Get Voltage timeout");
                break;
            }
        }
    }else{
    if (movex > 1.0) movex = 1.0;
    if (movex < -1.0) movex = -1.0;
    if (movey > 1.0) movey = 1.0;
    if (movey < -1.0) movey = -1.0;
    if (rot > 1.0) rot = 1.0;
    if (rot < -1.0) rot = -1.0;

    //char x_send = static_cast<char>(movex * 100) + 128;
    //char y_send = static_cast<char>(movey * 100) + 128;
    //char rot_send = static_cast<char>(rot * 100) + 128;
   //char check = x_send + y_send + rot_send;
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
    
    /*std::cout << "writeSpeed: ";
    std::cout << movex;
     for (int i = 0; i < 6; ++i) {
         std::cout << std::hex << std::setfill('0') << std::setw(2) << (int)(buf[i]) << " ";
     }
    std::cout << std::endl;*/

    boost::asio::write(sp, boost::asio::buffer(buf));}
}

bool MyAGV::execute(double linearX, double linearY, double angularZ)
{
	//std::cout << "execute: " << linearX << std::endl;
    writeSpeed(linearX, linearY, angularZ);
    readSpeed(); // easy to report error 

    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = currentTime;
    odom_trans.header.frame_id = "odom";
    odom_trans.child_frame_id = "base_footprint";

    geometry_msgs::Quaternion odom_quat;
    odom_quat = tf::createQuaternionMsgFromYaw(theta); // THETA
    odom_trans.transform.translation.x = x; //X
    odom_trans.transform.translation.y = y; //Y

    odom_trans.transform.translation.z = 0.0;
    odom_trans.transform.rotation = odom_quat;

    odomBroadcaster.sendTransform(odom_trans);

    nav_msgs::Odometry msgl;
    msgl.header.stamp = currentTime;
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

    pub.publish(msgl);
}
