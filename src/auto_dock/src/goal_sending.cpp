#include "auto_dock/goal_sending.h"

/**
void GoalSending::DoShutdown(int sig)
{
	ROS_INFO("shutting down!");
	ros::shutdown(); 
    exit(sig); 
}
**/

void GoalSending::openfile()
{
      
      in_.open( g,std::ios::in | std::ios::binary);
      if (!in_.is_open())
       {
       std::cout << "Error opening file\n" << std::endl;
       return;
    
       }
      if (reader_.parse(in_, root_)) 
      {
           goal_point[0] = root_["robot_pose"]["pos_x"].asDouble();
           goal_point[1] = root_["robot_pose"]["pos_y"].asDouble();
           goal_point[2] = root_["robot_pose"]["pos_z"].asDouble();
           goal_point[3] = root_["robot_pose"]["ori_x"].asDouble();
           goal_point[4] = root_["robot_pose"]["ori_y"].asDouble();
           goal_point[5] = root_["robot_pose"]["ori_z"].asDouble();
           goal_point[6] = root_["robot_pose"]["ori_w"].asDouble();       
      }
      std::cout << "goal=" << goal_point[0] << " "
                           << goal_point[1] << " "
                           << goal_point[5] << " "
                           << goal_point[6] << std::endl;
}


void GoalSending::goalPointPub()
{       MoveBaseClient ac("move_base", true);
       
        while(!ac.waitForServer(ros::Duration(5.0))){
        ROS_INFO("Waiting for the move_base action server to come up");
    }

        goal.target_pose.header.frame_id = "map";
        goal.target_pose.header.stamp = ros::Time::now();

        goal.target_pose.pose.position.x = goal_point[0];
        goal.target_pose.pose.position.y = goal_point[1];
        goal.target_pose.pose.position.z = goal_point[2];
        goal.target_pose.pose.orientation.x=goal_point[3];
        goal.target_pose.pose.orientation.y=goal_point[4];
        goal.target_pose.pose.orientation.z=goal_point[5];  
        goal.target_pose.pose.orientation.w = goal_point[6];

        ROS_INFO("Sending goal");

        std::cout <<  goal.target_pose.pose.position.x << " "
                  <<  goal.target_pose.pose.position.y << " "
                  <<  goal.target_pose.pose.position.z << " "
                  <<  goal.target_pose.pose.orientation.z << " "
                  <<  goal.target_pose.pose.orientation.w <<  std::endl;
                

        ac.sendGoal(goal);

        ac.waitForResult();
   
        if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
          ROS_INFO("ok, the base moved to the goal");
        else
          ROS_ERROR("The base failed to move for some reason");
    
}
int main(int argc, char** argv){
    ros::init(argc, argv, "a_goals_sender"); 
    ros::NodeHandle n;
    GoalSending goal;
    n.param<std::string>("file_name", g, "/home/ubuntu/myagv_ros/src/auto_dock/data/0.json");
    /**
    n.setParam("file_name", g);
    if(n.getParam("file_name", g)){

        ROS_INFO("Got param ");
    }
    else
     {
        ROS_ERROR("Failed to get param 'file_name'");
     } 

    std::cout << "g=" << g.c_str << std::endl;
    **/
    goal.openfile();
   // signal(SIGINT, goal.DoShutdown);
    ros::Rate loop_rate(100); 
    while (ros::ok())
    {
        goal.goalPointPub();
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}

