#ifndef MYAGV_H
#define MYAGV_H

#include <ros/ros.h>
#include <ros/time.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf/transform_broadcaster.h>
#include <boost/asio.hpp>


class MyAGV
{
public:
	MyAGV();
	~MyAGV();

	bool init();
	bool execute(double linearX, double linearY, double angularZ);

private:
	bool readSpeed();
	void writeSpeed(double movex, double movey, double rot);

	ros::Time currentTime, lastTime;

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

	ros::NodeHandle n;
	ros::Publisher pub;
	tf::TransformBroadcaster odomBroadcaster;
};


#endif // !MYAGV_H
