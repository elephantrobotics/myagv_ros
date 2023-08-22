#!/usr/bin/env python

import rospy
import time

import actionlib
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
            ##stop_client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
          #  stop_client.wait_for_server()
           # goal = MoveBaseGoal()
           # stop_client.send_goal(goal)
           # stop_client.wait_for_result()
            sys.exit(0)
            #return False
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


    map_navigation = MapNavigation()

    goals = [
        (0.229920655489 ,-0.468442887068 , -0.566741287911 ,0.823895814152),
        (0.663715600967 ,  0.363270163536 , 0.294119799193,0.955768561799)
    ]

    for i in range(1):
        for goal in goals:
            x_goal, y_goal, orientation_z, orientation_w = goal
            map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
            time.sleep(2)

            




