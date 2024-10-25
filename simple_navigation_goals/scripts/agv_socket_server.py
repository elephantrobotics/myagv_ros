#!/usr/bin/env python                                                                                                                      
#coding=UTF-8
import rospy
import time
import socket
import threading
import actionlib
import signal
import numpy as np
import os
import fcntl
import struct
import sys

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

pub = rospy.Publisher('/cmd_vel',Twist, queue_size=10)
pub_setpose = rospy.Publisher('/initialpose',PoseWithCovarianceStamped, queue_size=10)
pub_cancel = rospy.Publisher('/move_base/cancel', GoalID, queue_size=10)

angle_table = {
    "init":[0,0,0,0,0,0],
    "move_init":[90.06, -30.41, 22.14, -1.05, 87.45, 0.39],
    "pick_init":[85.42, 11.68, -25.46, 1.93, 86.13, 0],
    "place_init":[85.42, -43.68, 21.26, -2.54, 34.54, 0]
}

# 抓取点上方
pick_top = [
    [-116.54, 11.77, -11.07, -0.43, 90.61, -27.07],
    [-76.64, 14.15, -13.53, -2.1, 95.0, 13.09],
    [-110.08, 34.45, -22.32, -2.46, 67.47, -13.53],
    [-79.89, 33.83, -23.46, -2.46, 74.7, 10.98]
]

# 放置点
place_coords = [
    [69.52, 22.5, -44.56, 0.96, 73.91, -4.13],
    [100.72, 25.66, -44.64, -6.59, 74.61, -2.98],
    [131.13, 36.73, -51.32, -13.71, 62.22, -4.74]
]

class MapNavigation:
    def __init__(self):
        self.goalReached = False
        rospy.init_node('map_navigation', anonymous=False)
    
    # init robot feed pose
    def set_pose(self,position_x,position_y,orientation_z,orientation_w,covariance):
        pose = PoseWithCovarianceStamped()
        pose.header.seq = 0
        pose.header.stamp.secs = 0
        pose.header.stamp.nsecs = 0
        pose.header.frame_id = 'map'
        pose.pose.pose.position.x = position_x
        pose.pose.pose.position.y = position_y
        pose.pose.pose.position.z = 0.0
        q = quaternion_from_euler(0, 0, 1.57)  
        pose.pose.pose.orientation.x = 0.0
        pose.pose.pose.orientation.y = 0.0
        pose.pose.pose.orientation.z =  orientation_z
        pose.pose.pose.orientation.w =  orientation_w
        pose.pose.covariance = [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, covariance]
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
    mc.set_gripper_value(40, 30)
    time.sleep(1)
    for i in range(4):
        mc.send_angles(pick_top[i], 50)
        time.sleep(2)

        # 获取当前坐标
        current_coords = mc.get_coords()
        time.sleep(2)
        while current_coords is None:
            time.sleep(0.5)
            current_coords = mc.get_coords()
            print("current_coords is None")
            if current_coords is not None:
                break

        current_coords[2] =110
        mc.send_coords(current_coords,50,mode=1) #z轴下降

        time.sleep(2)
        mc.set_gripper_value(5, 30) #闭合夹爪进行抓取
        time.sleep(1)

        current_coords[2]+=60
        mc.send_coords(current_coords,50,mode=1) #z轴抬高
        time.sleep(1)

        mc.send_angles([0,0,0,0,0,0], 60)

        time.sleep(1)

        # 四个水果放在三个框中
        if i == 3:
            mc.send_angles(place_coords[0], 40)
        else:
            mc.send_angles(place_coords[i], 40)
        
        time.sleep(3)
        mc.set_gripper_value(40, 30)

        time.sleep(2)
        mc.send_angles([0,0,0,0,0,0], 40)
        time.sleep(3)
    
    # 结束后复位
    mc.send_angles(angle_table["move_init"], 50)
    time.sleep(1)
    mc.set_gripper_value(0, 30)

def pub_vel(x, y , theta):
    twist = Twist()
    twist.linear.x = x
    twist.linear.y = y
    twist.linear.z = 0
    twist.angular.x = 0
    twist.angular.y = 0
    twist.angular.z = theta
    pub.publish(twist)

def signal_handler(signal, frame):
    print("Ctrl+C pressed. Exiting...")
    # Close all connections
    running_flag = False
    if conn !=None :
        conn.close()  #Close the connection to the client
    server_socket.close()  # Close server socket
    print("Connections closed.")
    sys.exit()

if __name__ == '__main__':
   
    goal_1 = [(-1.8894099950790405,0.6915320158004761,-0.7476189288897872,0.6641279524050221)]
    goal_2 = [(-1.1645034551620483,1.5066015243530273,-0.03527231359038596,0.9993777383422053)]
    goal_3 = [(-1.7634624004364014,0.6029707193374634,-0.7010442389772473,0.7131177847991257)]

    map_navigation = MapNavigation()

    plist = get_port_list()
    print(plist)
    mc = MyCobot(plist[0],115200)

    time.sleep(0.5)
    mc.send_angles(angle_table["move_init"], 50)
    time.sleep(1)
    mc.set_gripper_value(0, 30)

    ifname = "wlan0"
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    HOST = socket.inet_ntoa(fcntl.ioctl(s.fileno(), 0x8915, struct.pack('256s', bytes(ifname,encoding="utf8")))[20:24])
    PORT = 9000
    print("ip: {} port: {}".format(HOST, PORT))

    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    server_socket.bind((HOST, PORT))
    server_socket.listen(3)
    server_socket.settimeout(None)

    # Register the Ctrl+C signal handler
    global running_flag 
    running_flag = True
    signal.signal(signal.SIGINT, signal_handler)
    print("Waiting for the client to connect")
    
    result = server_socket.accept()
    conn = result[0] 
    address = result[1]
    t = threading.Thread(target=get_res)
    t.start()
    # get stop res
    stop_thread = threading.Thread(target=get_stop_res)
    stop_thread.start()

    nav_times = 0
  
    while running_flag:
        #loop
        if socket_res == 'go_to_feed':
            if nav_times < 1:
                nav_times +=1
                for goal in goal_1:
                    x_goal, y_goal, orientation_z, orientation_w = goal
                    flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                    if flag_feed_goalReached:
                        time.sleep(0.1)
                        print("start agv_aruco")
                        os.system('python agv_aruco.py')
                        time.sleep(1)
                        mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0], 50)         
                        socket_connect('arrive_feed')
                        map_navigation.set_pose(-1.8611218929290771,0.028858069330453873,-0.6969873407167377,0.7170834309064812,0.06853892326654787)
                        socket_res = None
                    else:
                        print("failed")
            else :
                for goal in goal_3:
                    x_goal, y_goal, orientation_z, orientation_w = goal
                    flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                    if flag_feed_goalReached:
                        time.sleep(0.1)
                        print("start agv_aruco")
                        os.system('python agv_aruco.py')
                        time.sleep(1)
                        mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0], 50)         
                        socket_connect('arrive_feed')
                        map_navigation.set_pose(-1.8611218929290771,0.028858069330453873,-0.6969873407167377,0.7170834309064812,0.06853892326654787)
                        socket_res = None
                    else:
                        print("failed")
        
        if socket_res == 'picking_finished':
            time.sleep(2)
            mc.send_angles(angle_table["move_init"], 50)
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.2,0,0)
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
                    map_navigation.set_pose(-0.8328313827514648,1.669838786125183,0.001504919156486124,0.9999988676085251,0.06853892326654787)
                    time.sleep(3)
                    print("pick")
                    pick()
                    socket_res = 'placed_finished'
                else:
                    print("failed")
        
        if socket_res == 'placed_finished':
            mc.send_angles(angle_table["move_init"], 50)
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.1,0,0)
            time.sleep(2)
            pub_vel(0,0,-0.1)
            time.sleep(3.5)
            pub_vel(0.1,0,0)
            time.sleep(2)
            socket_res = 'go_to_feed'

        # single
        if socket_res == 'single_go_to_feed':
            if nav_times < 1:
                nav_times +=1
                for goal in goal_1:
                    x_goal, y_goal, orientation_z, orientation_w = goal
                    flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                    if flag_feed_goalReached:
                        time.sleep(0.1)
                        print("start agv_aruco")
                        os.system('python agv_aruco.py')
                        time.sleep(1)
                        mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0], 50)           
                        map_navigation.set_pose(-1.8611218929290771,0.028858069330453873,-0.6969873407167377,0.7170834309064812,0.06853892326654787)
                        socket_res = None
                    else:
                        print("failed")
            else:
                for goal in goal_3:
                    x_goal, y_goal, orientation_z, orientation_w = goal
                    flag_feed_goalReached = map_navigation.navigate(x_goal, y_goal, orientation_z, orientation_w)
                    if flag_feed_goalReached:
                        time.sleep(0.1)
                        print("start agv_aruco")
                        os.system('python agv_aruco.py')
                        time.sleep(1)
                        mc.send_angles([85.42, 11.68, -25.46, 1.93, 86.13, 0], 50)         
                        map_navigation.set_pose(-1.8611218929290771,0.028858069330453873,-0.6969873407167377,0.7170834309064812,0.06853892326654787)
                        socket_res = None
                    else:
                        print("failed")

        if socket_res == 'single_picking_finished':
            time.sleep(2)
            mc.send_angles(angle_table["move_init"], 50)
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.2,0,0)
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
                    map_navigation.set_pose(-0.8328313827514648,1.669838786125183,0.001504919156486124,0.9999988676085251,0.06853892326654787)
                    time.sleep(3)
                    pick()
                    socket_res = None
                else:
                    print("failed")

        if socket_res == 'single_placed_finished':
            mc.send_angles(angle_table["move_init"], 50)
            pub_vel(0,0,0)
            time.sleep(2)
            pub_vel(-0.1,0,0)
            time.sleep(2)
            pub_vel(0,0,-0.1)
            time.sleep(3.5)
            pub_vel(0.1,0,0)
            time.sleep(2)
            pub_vel(0,0,0)
            socket_res = None
