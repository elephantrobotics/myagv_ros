#include <tf/transform_listener.h>
#include <fstream>
#include <jsoncpp/json/json.h>
#include <sstream>
#include <iostream>

using namespace std;

struct state
{
    double x;
    double y;
    double z;
    double yaw;
    double r_x;
    double r_y;
    double r_z;
    double r_w;

};
void writdatajson(double x,double y,double z,double r_x,double r_y,double r_z,double r_w)
{
  Json::Value root;
  root["order"] = Json::Value(0);
  Json::Value pose1;
  pose1["pos_x"] = Json::Value(x);
  pose1["pos_y"] = Json::Value(y);
  pose1["pos_z"] = Json::Value(z);
  pose1["ori_x"] = Json::Value(r_x);
  pose1["ori_y"] = Json::Value(r_y);
  pose1["ori_z"] = Json::Value(r_z);
  pose1["ori_w"] = Json::Value(r_w);
  root["robot_pose"]=Json::Value(pose1);
    Json::StyledWriter sw;
//	cout << sw.write(root) << endl << endl;
	ofstream desFile("/home/ubuntu/myagv_ros/src/auto_dock/data/1.json", std::ios::out );
	if (!desFile.is_open())
	{
		cout << "Fail to pen des.jons";
		return;
	}
	desFile << sw.write(root);
	desFile.close();

}
int main(int argc, char **argv)
{
    ros::init(argc, argv, "record_pose");
    ros::NodeHandle n, turtle_node;
    tf::TransformListener listener;

    state robot_pose;
    tf::StampedTransform transform;
    while (n.ok())
    {
        try
        {
            listener.waitForTransform("map", "base_footprint", ros::Time(0), ros::Duration(3.0));
            listener.lookupTransform("/map", "/base_footprint", ros::Time(0), transform);

        }
        catch (tf::TransformException &ex)
        {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }
      
        double roll, pitch, yaw;
        tf::Matrix3x3(transform.getRotation()).getEulerYPR(yaw, pitch, roll);

        // tf::Quaternion quat;
        // tf::quaternionMsgToTF(odom_msg.pose.pose.orientation,quat);
        // double roll,pitch,yaw;
        // tf::Matrix3x3(quat).getRPY(roll,pitch,yaw);

        robot_pose.x    = transform.getOrigin().x();
        robot_pose.y    = transform.getOrigin().y();
        robot_pose.z    = transform.getOrigin().z();                
        robot_pose.r_x  = transform.getRotation().getX();
        robot_pose.r_y  = transform.getRotation().getY();
        robot_pose.r_z  = transform.getRotation().getZ();
        robot_pose.r_w  = transform.getRotation().getW();
        robot_pose.yaw = yaw;
        
      writdatajson( robot_pose.x, robot_pose.y, robot_pose.z, robot_pose.r_x, robot_pose.r_y, robot_pose.r_z, robot_pose.r_w);

        ROS_INFO("robot pose x: %f", robot_pose.x);
        ROS_INFO("robot pose y: %f", robot_pose.y);
        ROS_INFO("robot pose z: %f", robot_pose.z);
        ROS_INFO("robot pose r_x: %f", robot_pose.r_x);
        ROS_INFO("robot pose r_y: %f", robot_pose.r_y);
        ROS_INFO("robot pose r_z: %f", robot_pose.r_z);
        ROS_INFO("robot pose r_w: %f", robot_pose.r_w);
        ROS_INFO("robot pose yaw: %f", robot_pose.yaw);
        return 0;
    }
}

