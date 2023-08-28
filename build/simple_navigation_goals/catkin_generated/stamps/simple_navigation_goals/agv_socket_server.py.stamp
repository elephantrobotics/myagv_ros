#!/usr/bin/env python                                                                                                                      
#coding=UTF-8
import rospy
import time
import socket
import threading
import actionlib
import numpy as np
import os
import fcntl
import struct

from pymycobot.mycobot import MyCobot
from pymycobot.mycobotsocket import MyCobotSocket
from pymycobot.utils import get_port_list
from geometry_msgs.msg import PoseWithCovarianceStamped
from tf.transformations import quaternion_from_euler
from std_srvs.srv import Empty
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from math import radians, degrees
from actionlib_msgs.msg import *
from actionlib_msgs.msg import GoalID
from geometry_msgs.msg import Point
from geometry_msgs.msg import Twist


global socket_res
socket_res = None

global socket_stop_res
socket_stop_res = None

agv_stop = False

# ip = '192.168.1.103'
# port = 9000
# 使用socket通信控制机械臂
#mc = MyCobotSocket(ip, port)

plist = get_port_list()
mc = MyCobot(plist[0],115200)
print(plist)
time.sleep(0.5)
mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0], 50)
time.sleep(1)
mc.set_gripper_value(40, 30)

pub = rospy.Publisher('/cmd_vel',Twist, queue_size=10)
pub_setpose = rospy.Publisher('/initialpose',PoseWithCovarianceStamped, queue_size=10)
pub_cancel = rospy.Publisher('/move_base/cancel', GoalID, queue_size=10)

# 抓取点上方
pick_top = [
    [-117.68, 13.09, -7.82, 2.46, 86.3, -30.14],       #P1点
    [-73.91, 4.48, 8.96, -0.43, 72.24, 13.88],       #P2点
    [-106.96, 33.39, -34.8, 3.86, 79.18, -15.38],     #P3点
    [-74.61, 35.77, -39.63, -1.49, 86.04, 14.85]         #P4点
]

# 抓取点
pick_coords = [
    [-117.68, 16.87, 12.91, 2.98, 60.55, -30.76],       #P1点
    [-73.91, 9.14, 22.5, -0.52, 54.4, 14.41],       #P2点
    [-106.96, 33.39, -14.06, 3.86, 58.53, -16.25],      #P3点
    [-74.61, 35.77, -18.01, -1.49, 65.47, 14.85]         #P4点
]

# 放置过渡点
place_init = [85.42, -43.68, 21.26, -2.54, 34.54, 0]

# 放置点
place_coords = [
    [51.41, 20.91, -21.18, 0.26, 47.01, 0],
    [82.17, 9.49, -10.63, -1.31, 62.87, 0],
    [112.23, 17.92, -15.38, -1.49, 56.25, 0]
]

# 放取过渡点
place_top = [
    [56.33, 38.5, -61.25, 0.79, 79.89, 0.35],
    [86.73, 13.21, -34.54, 0.05, 80.52, 0.26],
    [121.7, 29.53, -51.37, 0.49, 81.18, 0.0],
    [56.33, 38.5, -61.25, 0.79, 79.89, 0.35]
]

class MapNavigation:
    def __init__(self):
        self.goalReached = False
        rospy.init_node('map_navigation', anonymous=False)
    
    # init robot feed pose
    def set_pose(self):
        pose = PoseWithCovarianceStamped()
        pose.header.seq = 0
        pose.header.stamp.secs = 0
        pose.header.stamp.nsecs = 0
        pose.header.frame_id = 'map'
        pose.pose.pose.position.x =1.64721035957
        pose.pose.pose.position.y =-0.288786113262
        pose.pose.pose.position.z = 0.0
        q = quaternion_from_euler(0, 0, 1.57)  
        pose.pose.pose.orientation.x = 0.0
        pose.pose.pose.orientation.y = 0.0
        pose.pose.pose.orientation.z =  -0.0233597553256
        pose.pose.pose.orientation.w = 0.999727123685
        pose.pose.covariance = [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, 0.06853892326654787]
        rospy.sleep(1)
        pub_setpose.publish(pose)
        rospy.loginfo('Published robot pose: %s' % pose)

    # init robot unload pose
    def set_pose_1(self):
        pose = PoseWithCovarianceStamped()
        pose.header.seq = 0
        pose.header.stamp.secs = 0
        pose.header.stamp.nsecs = 0
        pose.header.frame_id = 'map'
        pose.pose.pose.position.x =-0.0153614878654
        pose.pose.pose.position.y =0.724431753159
        pose.pose.pose.position.z = 0.0
        q = quaternion_from_euler(0, 0, 1.57)  
        pose.pose.pose.orientation.x = 0.0
        pose.pose.pose.orientation.y = 0.0
        pose.pose.pose.orientation.z = 0.723028311988
        pose.pose.pose.orientation.w = 0.690818398758
        pose.pose.covariance = [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
         0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
         0.0, 0.0, 0.0, 0.0, 0.0,  0.06853892326654787]
        rospy.sleep(1)
        pub_setpose.publish(pose)
        rospy.loginfo('Published robot pose: %s' % pose)
        
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
        return self.goalReached

def socket_connect(data):
    conn.send(data.encode("UTF-8"))

def get_res():
    while 1:
        global socket_res
        global socket_stop_res
        data = conn.recv(1024).decode()
        socket_res = data
        socket_stop_res = data


def get_stop_res():
    while 1:
        global socket_stop_res
        global agv_stop
       
        if socket_stop_res == "stop":
            agv_stop = True
        
        if socket_stop_res == "Resume_Stop":
            agv_stop = False

        if agv_stop:
            goal_id = GoalID()
            pub_cancel.publish(goal_id)
            twist = Twist()
            twist.linear.x = 0.0
            twist.linear.y = 0.0
            twist.linear.z = 0.0
            twist.angular.x = 0.0
            twist.angular.y = 0.0
            twist.angular.z = 0.0
            pub.publish(twist)
            rospy.sleep(0.1)


def pick():
    mc.send_angles([0,0,0,0,0,0], 60)
    time.sleep(2)
    mc.set_gripper_value(55, 30)
    time.sleep(1)
    for i in range(4):
        mc.send_angles(pick_top[i], 50)
        time.sleep(4)
        mc.send_angles(pick_coords[i], 40)
        time.sleep(3)
        mc.set_gripper_value(30, 30)
        time.sleep(1)
        mc.send_angles(pick_top[i], 50)
        time.sleep(3)
        mc.send_angles(place_init, 50)
        time.sleep(4)
        if i == 3:
            mc.send_angles(place_coords[0], 40)
        else:
            mc.send_angles(place_coords[i], 40)
        time.sleep(3)
        mc.set_gripper_value(55, 30)
        time.sleep(1)
        mc.send_angles(place_top[i],40)
        time.sleep(2)
        mc.send_angles([0,0,0,0,0,0], 40)
        time.sleep(3)
    mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0], 50)
    time.sleep(1)
    mc.set_gripper_value(30, 30)
    print("finish")

def pub_vel(x, y , theta):
    twist = Twist()
    twist.linear.x = x
    twist.linear.y = y
    twist.linear.z = 0
    twist.angular.x = 0
    twist.angular.y = 0
    twist.angular.z = theta
    pub.publish(twist)

if __name__ == '__main__':
   
    goal_1 = [(1.14674675465,-0.2211885452272,-0.194474697331,0.980907534938)]
    goal_2 = [(-0.00696444511414,0.193625003099,0.707766802897,0.706446142829)]

    map_navigation = MapNavigation()
    #server_ip = '192.168.1.101'
    #server_port = 9005

    ifname = "wlan0"
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    HOST = socket.inet_ntoa(fcntl.ioctl(s.fileno(), 0x8915, struct.pack('256s', ifname))[20:24])
    PORT = 9000
    print("ip: {} port: {}".format(HOST, PORT))

    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    server_socket.bind((HOST, PORT))
    server_socket.listen(3)
    server_socket.settimeout(None)
    print("Waiting for the client to connect")
    result = server_socket.accept()
    conn = result[0] 
    address = result[1]
    t = threading.Thread(target=get_res)
    t.start()
    # get stop res
    stop_thread = threading.Thread(target=get_stop_res)
    stop_thread.start()
     
    while 1:
        #loop
        if socket_res == 'go_to_feed':
            for goal in goal_1:
                x_goal, y_goal, orientation_z, orientation_w = goal
                flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                if flag_feed_goalReached:
                    time.sleep(0.1)
                    print("start agv_aruco")
                    os.system('python agv_aruco.py')         
                    socket_connect('arrive_feed')
                    map_navigation.set_pose()
                    socket_res = None
                else:
                    print("failed")
        
        if socket_res == 'picking_finished':
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.1,0,0)
            time.sleep(2)
            pub_vel(0,0.1,0)
            time.sleep(2)
            socket_res = 'go_to_unload'
 
        if socket_res == 'go_to_unload':
            for goal in goal_2:
                x_goal, y_goal, orientation_z, orientation_w = goal
                flag_unload_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                if flag_unload_goalReached:
                    time.sleep(0.1)
                    print("python agv_aruco")
                    os.system('python agv_aruco.py')
                    #agv_aruco_1.main()
                    time.sleep(2)
                    map_navigation.set_pose_1()
                    time.sleep(3)
                    print("pick")
                    pick()
                    socket_res = 'placed_finished'
                else:
                    print("failed")
        
        if socket_res == 'placed_finished':
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.1,0,0)
            time.sleep(2)
            pub_vel(0,0,-0.1)
            time.sleep(2)
            socket_res = 'go_to_feed'

        # single
        if socket_res == 'single_go_to_feed':
            for goal in goal_1:
                x_goal, y_goal, orientation_z, orientation_w = goal
                flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                if flag_feed_goalReached:
                    time.sleep(0.1)
                    print("start agv_aruco")
                    os.system('python agv_aruco.py')         
                    map_navigation.set_pose()
                    socket_res = None
                else:
                    print("failed")

        if socket_res == 'single_picking_finished':
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.1,0,0)
            time.sleep(2)
            pub_vel(0,0.1,0)
            time.sleep(2)
            pub_vel(0,0,0)
            socket_res = None

        if socket_res == 'single_go_to_unload':
            for goal in goal_2:
                x_goal, y_goal, orientation_z, orientation_w = goal
                flag_unload_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                if flag_unload_goalReached:
                    time.sleep(0.1)
                    print("python agv_aruco")
                    os.system('python agv_aruco.py')
                    time.sleep(2)
                    map_navigation.set_pose_1()
                    time.sleep(3)
                    pick()
                    socket_res = None
                else:
                    print("failed")

        if socket_res == 'single_placed_finished':
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.1,0,0)
            time.sleep(2)
            pub_vel(0,0,-0.1)
            time.sleep(2)
            pub_vel(0,0,0)
            socket_res = None
