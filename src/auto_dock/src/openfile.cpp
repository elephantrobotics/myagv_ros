#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>   
#include <actionlib/client/simple_action_client.h>   
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>
#include <signal.h>  
#include <fstream>
#include <jsoncpp/json/json.h>

using namespace std;




int main() 
{
  
    Json::Reader reader_;
    Json::Value root_;
    std::ifstream in_;
    vector<double> goal_point(6,0);
    double pos_x,pos_y,pos_z,ori_x,ori_y,ori_z,ori_w;

      in_.open( "/home/ubuntu/myagv_ros/src/auto_dock/data/1.json",std::ios::binary);
      if (!in_.is_open())
       {
       std::cout << "Error opening file\n" << std::endl;
 
       }
        else if (reader_.parse(in_, root_)) 
      {   
           goal_point[0] = root_["robot_pose"]["pos_x"].asDouble();
           goal_point[1] = root_["robot_pose"]["pos_y"].asDouble();
           goal_point[2] = root_["robot_pose"]["pos_z"].asDouble();
           goal_point[3] = root_["robot_pose"]["ori_x"].asDouble();
           goal_point[4] = root_["robot_pose"]["ori_y"].asDouble();
           goal_point[5] = root_["robot_pose"]["ori_z"].asDouble();
           goal_point[6] = root_["robot_pose"]["ori_w"].asDouble();     
          

          /**
           pos_x = root_["robot_pose"]["pos_x"].asDouble();
           pos_y = root_["robot_pose"]["pos_y"].asDouble();
           pos_z = root_["robot_pose"]["pos_z"].asDouble();
           ori_x = root_["robot_pose"]["ori_x"].asDouble();
           ori_y = root_["robot_pose"]["ori_y"].asDouble();
           ori_z = root_["robot_pose"]["ori_z"].asDouble();
           ori_w = root_["robot_pose"]["ori_w"].asDouble();     
          **/
      }
        cout<<fixed;
        cout.precision(16);
      std::cout << "goal=" << goal_point[0] << " "
                           << goal_point[1] << " "
                           << goal_point[2] << " "
                           << goal_point[3] << " "
                           << goal_point[4] << " "
                           << goal_point[5] << " "
                           << goal_point[6] << std::endl;
                           
      /**
      std::cout << "goal=" << pos_x << " "
                           << pos_y << " "
                           << ori_z << " "
                           << ori_w << std::endl;
      **/

  return 0;
}