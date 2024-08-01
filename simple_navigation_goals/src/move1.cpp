#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <tf/transform_listener.h>
#include <math.h>

int main(int argc, char** argv) {
  ros::init(argc, argv, "move_forward");
  ros::NodeHandle nh;

  // ÉèÖÃÒÆ¶¯¾àÀë
  double distance = 1.0;
  // ´´½¨Ò»¸ö·¢²¼ËÙ¶È¿ØÖÆÖ¸ÁîµÄPublisher
  ros::Publisher cmd_vel_pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);

  // ´´½¨Ò»¸ötf::TransformListener¶ÔÏó
  tf::TransformListener listener;

  // µÈ´ýtf¹ã²¥µÄ×ø±êÏµÖ®¼äµÄ±ä»»¿ÉÓÃ
  listener.waitForTransform("/odom", "/base_footprint", ros::Time(0), ros::Duration(3.0));

  // »ñÈ¡Ð¡³µµ±Ç°µÄÎ»ÖÃÐÅÏ¢
  tf::StampedTransform transform;
  try {
    listener.lookupTransform("/odom", "/base_footprint", ros::Time(0), transform);
  } catch (tf::TransformException &ex) {
    ROS_ERROR("%s", ex.what());
    return 0;
  }
  double start_x = transform.getOrigin().x();
  double start_y = transform.getOrigin().y();
  double start_z = transform.getOrigin().z();

  // ÒÆ¶¯Ð¡³µ
  double current_x = start_x;
  double current_y = start_y;
  double current_z = start_z;
  double distance_moved = 0.0;
  ros::Rate loop_rate(10);
  while (nh.ok() && distance_moved < distance) {
    // ·¢²¼ÒÆ¶¯Ö¸Áî
    geometry_msgs::Twist move_msg;
    move_msg.linear.x = 0.2; // ÉèÖÃÏßËÙ¶ÈÎª0.2m/s
    cmd_vel_pub.publish(move_msg);

    // ¼ÆËãÐ¡³µµ±Ç°µÄÎ»ÖÃ
    try {
      listener.lookupTransform("/odom", "/base_footprint", ros::Time(0), transform);
      current_x = transform.getOrigin().x();
      current_y = transform.getOrigin().y();
      current_z = transform.getOrigin().z();
    } catch (tf::TransformException &ex) {
      ROS_ERROR("%s", ex.what());
      continue;
    }

    // ¼ÆËãÐ¡³µÒÆ¶¯µÄ¾àÀë
    distance_moved = sqrt(pow((current_x - start_x), 2) + pow((current_y - start_y), 2) + pow((current_z - start_z), 2));

    // µÈ´ý
    ros::spinOnce();
    loop_rate.sleep();
  }

  // Í£Ö¹ÒÆ¶¯
  geometry_msgs::Twist stop_msg;
  cmd_vel_pub.publish(stop_msg);

  return 0;
}
