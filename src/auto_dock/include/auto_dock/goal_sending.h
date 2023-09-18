#ifndef GOAL_SENDING_H
#define GOAL_SENDING_H
 
#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>   
#include <actionlib/client/simple_action_client.h>   
#include "std_msgs/String.h"
#include <sstream>
#include <iostream>
#include <signal.h>  
#include <fstream>
#include <vector>
#include <string>
#include <jsoncpp/json/json.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
using namespace std;
std::string g;

class GoalSending {
 private:

 
  move_base_msgs::MoveBaseGoal goal;

  Json::Reader reader_;
  Json::Value root_;
  std::ifstream in_;


  vector<double> goal_point = vector<double> (6,0);


 
  
 
 public:
    void goalPointPub();
    void openfile();
    
 //   void DoShutdown(int sig);
};
 
#endif  