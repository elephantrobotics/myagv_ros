#ifndef MYAGV_H
#define MYAGV_H

#include <ros/ros.h>
#include <ros/time.h>
#include <sensor_msgs/Imu.h>
#include "std_msgs/Float32.h"
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf/transform_broadcaster.h>
#include <boost/asio.hpp>

//#define sampleFreq	20.5f			// sample frequency in Hz
#define twoKpDef	1.0f				// (2.0f * 0.5f)	// 2 * proportional gain
#define twoKiDef	0.0f				// (2.0f * 0.0f)	// 2 * integral gain
#define TOTAL_RECEIVE_SIZE 43         	// 43 RECEIVE_SIZE(v1.1) 27 RECEIVE_SIZE(v1.0) //The length of the data sent by the esp32
#define OFFSET_COUNT 	200

class MyAGV
{
public:
	MyAGV();
	~MyAGV();
	bool init();
	void execute(double linearX, double linearY, double angularZ);
	void publisherOdom(double dt);
	void publisherImuSensor();
	void Publish_Voltage();

private:
	bool readSpeed();
	void writeSpeed(double movex, double movey, double rot);
	void restore();
	void restoreRun();
	void clearSerialBuffer();

	bool initialized = false;

	double x;
	double y;
	double theta;

	double vx;
	double vy;
	double vtheta;

	double ax;
	double ay;
	double az;

	double wx;
	double wy;
	double wz;

	double roll;
	double pitch;
	double yaw;

	float Battery_voltage,Backup_Battery_voltage;
	float present_theta = 0.0f;         
	float last_theta = 0.0f;            
	float delta_theta = 0.0f;           
	float accumulated_theta = 0.0f;

	ros::NodeHandle n;
	ros::Publisher pub_odom,pub_voltage,pub_voltage_backup,pub_imu;
	ros::Time currentTime, lastTime;
	sensor_msgs::Imu imu_data;
	tf::TransformBroadcaster odomBroadcaster;
};


#endif // !MYAGV_H
