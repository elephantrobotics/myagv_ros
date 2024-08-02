#!/usr/bin/env python
import test_auto_charing                                                                                                                        
import rospy
import time
import agv_aruco
import agv_aruco_1
import actionlib
import numpy as np
from geometry_msgs.msg import PoseWithCovarianceStamped
from tf.transformations import quaternion_from_euler
from std_srvs.srv import Empty
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from math import radians, degrees
from actionlib_msgs.msg import *
from geometry_msgs.msg import Point



class MapNavigation:
    def __init__(self):
        self.goalReached = False
        rospy.init_node('map_navigation', anonymous=False)
    def moveToGoal(self, xGoal, yGoal, orientation_z, orientation_w):
        ac = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        while(not ac.wait_for_server(rospy.Duration.from_sec(5.0))):
      
            sys.exit(0)

        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = "map"
        goal.target_pose.header.stamp = rospy.Time.now()
        goal.target_pose.pose.position =  Point(xGoal, yGoal, 0)
        goal.target_pose.pose.orientation.x = 0.0
        goal.target_pose.pose.orientation.y = 0.0
        goal.target_pose.pose.orientation.z = orientation_z 
        goal.target_pose.pose.orientation.w = orientation_w

        rospy.loginfo("Sending goal location ...")
        ac.send_goal(goal)

        ac.wait_for_result(rospy.Duration(60))

        if(ac.get_state() ==  GoalStatus.SUCCEEDED):
            rospy.loginfo("You have reached the destination")
            return True
        else:
            rospy.loginfo("The robot failed to reach the destination")
            return False

    def shutdown(self):
        rospy.loginfo("Quit program")
        rospy.sleep()

    def navigate(self, xGoal, yGoal, orientation_z, orientation_w):
        self.goalReached = self.moveToGoal(xGoal, yGoal, orientation_z, orientation_w)


if __name__ == '__main__':
   
    goal_1 = [(0.659595251083 ,0.0182209927589 , 0.130239713964 ,0.991482534847)]
    goal_2 = [(-0.0304405391216 ,  0.166388019919 , 0.879178855259,0.476491910178)]

    map_navigation = MapNavigation()


    for goal in goal_1:
        x_goal, y_goal, orientation_z, orientation_w = goal
        map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
        time.sleep(2)
  
        agv_aruco.main()
    for goal in goal_2:
        x_goal, y_goal, orientation_z, orientation_w = goal
        map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
        time.sleep(2)
        agv_aruco_1.main()