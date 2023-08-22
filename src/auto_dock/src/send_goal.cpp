#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>   
#include <actionlib/client/simple_action_client.h>   
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>
#include <signal.h>  

using namespace std;

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

void DoShutdown(int sig)
{
	ROS_INFO("shutting down!");
	ros::shutdown(); 
    exit(sig); 
}

int main(int argc, char** argv){
    ros::init(argc, argv, "a_goals_sender"); 

    MoveBaseClient ac("move_base", true);


    while(!ac.waitForServer(ros::Duration(5.0))){
        ROS_INFO("Waiting for the move_base action server to come up");
    }
    move_base_msgs::MoveBaseGoal goal;
 
    signal(SIGINT, DoShutdown);
    
    ros::NodeHandle n;
    ros::Rate loop_rate(100); 
    
    while (ros::ok())
    {
        goal.target_pose.header.frame_id = "map";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position.x = -7.58328;
        goal.target_pose.pose.position.y = 1.19743;
        goal.target_pose.pose.position.z=0;
        goal.target_pose.pose.orientation.x=0;
        goal.target_pose.pose.orientation.y=0;
        goal.target_pose.pose.orientation.z=0;  
        goal.target_pose.pose.orientation.w = 1.0;

        ROS_INFO("Sending goal");

        ac.sendGoal(goal);

        ac.waitForResult();
   
        if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
          ROS_INFO("ok, the base moved to the goal");
        else
          ROS_ERROR("The base failed to move for some reason");
      
        ros::spinOnce();

        loop_rate.sleep();
    }
    return 0;
}

