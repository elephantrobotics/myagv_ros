#!/usr/bin/env python
#coding=UTF-8
import time
import threading
import time
import socket
import time
import fcntl
import struct
import signal
import json 
import sys
import subprocess
import roslaunch 
import rospy
import actionlib

from std_msgs.msg import Float32
from actionlib_msgs.msg import *
from actionlib_msgs.msg import GoalID
from tf.transformations import quaternion_from_euler
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import Point
from geometry_msgs.msg import Point
from geometry_msgs.msg import Twist
from geometry_msgs.msg import PoseWithCovarianceStamped

# MapNavigation
class MapNavigation:
    def __init__(self):
        # Initialize the ROS node
        rospy.init_node('map_navigation', anonymous=False)

        # rospublisher
        self.pub = rospy.Publisher('/cmd_vel',Twist, queue_size=10)
        self.pub_setpose = rospy.Publisher('/initialpose',PoseWithCovarianceStamped, queue_size=10)
        self.pub_cancel = rospy.Publisher('/move_base/cancel', GoalID, queue_size=10)
        self.voltage_subscriber = rospy.Subscriber("/PowerVoltage", Float32, self.voltage_callback) #Create a battery-voltage topic subscriber

        #Create TCP/IP socket
        self.ifname = b"wlan0"
        self.server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.host = socket.inet_ntoa(fcntl.ioctl(self.server_socket.fileno(), 0x8915, struct.pack('256s', self.ifname[:15]))[20:24])  #IP
        self.port = 9000  # port       
        print("ip: {} port: {}".format(self.host, self.port))

        # Bind IP and set a port
        self.server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1) #Set socket to be reusable
        self.server_socket.bind((self.host, self.port))
        self.server_socket.listen(3)
        self.server_socket.settimeout(None)
        print("Waiting for the client to connect")

        # Register the Ctrl+C signal handler
        self.running_flag = True
        signal.signal(signal.SIGINT, self.signal_handler)

        # ros topic publishing frequency
        self.frequency = 0.1
        self.conn = None

        # definition
        self.RobotVersion  = 1.0
        self.SystemVersion = 1.0
    
    # init robot feed pose
    def set_pose(self, xGoal, yGoal, orientation_z, orientation_w,covariance):
        pose = PoseWithCovarianceStamped()
        pose.header.seq = 0
        pose.header.stamp.secs = 0
        pose.header.stamp.nsecs = 0
        pose.header.frame_id = 'map'
        pose.pose.pose.position.x = xGoal
        pose.pose.pose.position.y = yGoal
        pose.pose.pose.position.z = 0.0
        q = quaternion_from_euler(0, 0, 1.57)  
        pose.pose.pose.orientation.x = 0.0
        pose.pose.pose.orientation.y = 0.0
        pose.pose.pose.orientation.z = orientation_z
        pose.pose.pose.orientation.w = orientation_w
        pose.pose.covariance = [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 
         0.0,0.0, 0.0, 0.0, covariance]
        rospy.sleep(1)
        self.pub_setpose.publish(pose)
        rospy.loginfo('Published robot pose: %s' % pose)
    
    # move_base
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
 
    # speed command
    def pub_vel(self, x, y , theta):
        twist = Twist()
        twist.linear.x = x
        twist.linear.y = y
        twist.linear.z = 0
        twist.angular.x = 0
        twist.angular.y = 0
        twist.angular.z = theta
        self.pub.publish(twist)
    
    #voltage Callback
    def voltage_callback(self, msg):
        return msg.data

    # socket
    def socket_connect(self, data):
        try:
            self.conn.sendall(json.dumps(data).encode())
            print(data.encode())
        except Exception as e:
            pass

    def process_json_array(self,new_msg):
        json_array.clear()
        for i in new_msg.keys():                
            if isinstance(new_msg[i], dict):          #If it is a dictionary, it enters the inner loop, otherwise it skips.
                for j in new_msg[i].keys():
                    print('key ', j, ' with value ', new_msg[i][j])
                    json_array.append(new_msg[i][j]) 
                print('goals_array',json_array)
                return json_array
            else:
                print(new_msg[i])
            
    # control_thread
    def process_and_control(self,new_msg, stop_event):       
        while self.running_flag and not stop_event.is_set():
            if new_msg:
                direction = None
                # System status
                if "getRobotVersion" in new_msg:
                    command = {f"{next(iter(new_msg))}": {"return": self.RobotVersion}}
                    self.socket_connect(command)
                    new_msg = None
                    continue

                elif "getSystemVersion" in new_msg:
                    command = {f"{next(iter(new_msg))}": {"return": self.SystemVersion}}
                    self.socket_connect(command)
                    new_msg = None
                    continue
                
                # Overall Status
                elif "agvOn" in new_msg:
                    launch_command = "roslaunch myagv_odometry myagv_active.launch"  # Ê¹ÓÃros ´ò¿ª
                    subprocess.run(['gnome-terminal', '-e', f"bash -c '{launch_command}; exec $SHELL'"])
                    new_msg = None

                elif "agvOff" in new_msg:
                    close_command = "ps -ef | grep -E " + "myagv_active.launch" + \
                        " | grep -v 'grep' | awk '{print $2}' | xargs kill -2"
                    subprocess.run(close_command, shell=True)
                    new_msg = None
                
                elif "isAgvOn" in new_msg:
                    process_check_command = "ps -ef | grep -E 'myagv_active.launch' | grep -v 'grep'"
                    result = subprocess.run(process_check_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    if len(result.stdout) > 0:
                        command = {f"{next(iter(new_msg))}": {"return": True}}
                        self.socket_connect(command)
                    else:
                        command = {f"{next(iter(new_msg))}": {"return": False}}
                        self.socket_connect(command)
                    new_msg = None

                # moving
                elif "initPosition" in new_msg:                 
                    json_array = self.process_json_array(new_msg)
                    if len(json_array) != 5:
                                self.socket_connect("Error: Unexpected number of elements in json_array.")
                                print("Error: Unexpected number of elements in json_array." )
                                new_msg=None 
                    else:
                        x_goal, y_goal, orientation_z, orientation_w,covariance = json_array
                        self.set_pose(x_goal, y_goal, orientation_z, orientation_w,covariance)
                        command = {f"{i}": {"return": True}}
                        self.socket_connect(command)
                        new_msg = None   
                        continue

                elif "goToPosition" in new_msg:
                    json_array = self.process_json_array(new_msg)
                    if len(json_array) != 4:
                        self.socket_connect("Error: Unexpected number of elements in json_array.")
                        print("Error: Unexpected number of elements in json_array." )
                        new_msg=None 
                    else:
                        x_goal, y_goal, orientation_z, orientation_w = json_array
                        #print('x_goal',x_goal, 'y_goal', y_goal, 'orientation_z',orientation_z, 'orientation_w', orientation_w)
                        flag_feed_goalReached = self.moveToGoal(x_goal, y_goal, orientation_z, orientation_w)
                        command = {f"{i}": {"return": flag_feed_goalReached}}
                        self.socket_connect(command)  
                        new_msg = None
                        continue

                elif "turnRight" in new_msg:
                    direction = (0, 0, -1)

                elif "turnLeft" in new_msg:
                    direction = (0, 0, 1)

                elif "goStraight" in new_msg:
                    direction = (1, 0, 0)

                elif "goBack" in new_msg:
                    direction = (-1, 0, 0)

                elif "stop"in new_msg:
                    self.pub_vel(0,0,0)
                    command = {f"{next(iter(new_msg))}": {"return": True}}
                    self.socket_connect(command)
                    new_msg = None
                    continue

                elif "batteryState" in new_msg:
                    voltage_data = self.voltage_callback(None)
                    command = {'batteryVoltage': voltage_data}
                    self.socket_connect(command)
                    continue
                else:
                    print('Unknown command:', new_msg)

                if direction is not None:
                    json_array.clear()
                    # Unpack and get data
                    for i in new_msg.keys():
                        if isinstance(new_msg[i], dict):          #If it is a dictionary, it enters the inner loop, otherwise it skips.
                            for j in new_msg[i].keys():
                                print('key ', j, ' with value ', new_msg[i][j])
                                json_array.append(new_msg[i][j]) 
                            print('json_array',json_array)
                            if len(json_array) != 2:
                                self.socket_connect("Error: Unexpected number of elements in json_array.")
                                print("Error: Unexpected number of elements in json_array." )
                                new_msg=None 
                            else:
                                duration,vel=json_array
                                start_time = time.time()
                                # Motion control
                                while (time.time() - start_time) < duration:
                                    if self.running_flag and not stop_event.is_set():   
                                        self.pub_vel(direction[0] * abs(vel), direction[1] * abs(vel), direction[2] * abs(vel))
                                        time.sleep(self.frequency)
                                    else:
                                        new_msg=None
                                        self.pub_vel(0,0,0)
                                        break 
                                self.pub_vel(0,0,0)
                                time.sleep(0.5) 
                                new_msg=None                      
                                if not stop_event.is_set():
                                    command = {f"{i}": {"return": True}}
                                    self.socket_connect(command)
                        else:
                            print(new_msg[i])
                 
    def receive_commands(self):
        while self.running_flag:
            try:
                self.conn, address = self.server_socket.accept()
                print('Connected to: ', address)
                while self.conn:
                    try:
                        msg = self.conn.recv(1024)           # Accept data and decode it according to utf-8
                        print('The data received is', msg)
                        print('The data type received is: ',type(msg))
                        if not msg:
                            break
                        msg = json.loads(msg)                          # Use json to parse the data and obtain dict data
                        
                        # Interrupt the current task, update data, and restart the task
                        self.stop_event.set()
                        self.control_thread.join()

                        new_msg = msg
                        self.stop_event.clear()

                        self.control_thread = threading.Thread(target=self.process_and_control, args=(new_msg, self.stop_event))
                        self.control_thread.start()

                    except socket.error as e:
                        print(e)

            except socket.error as e:
                print(f'Socket error: {e}')

    def signal_handler(self, signal, frame):
        print("Ctrl+C pressed. Exiting...")
        # Close all connections
        self.running_flag = False
        if self.conn !=None :
            self.conn.close()  #Close the connection to the client
        self.server_socket.close()  # Close server socket
        print("Connections closed.")
        sys.exit()
        
    def start_control(self):
        # Creating an instance variable stop_event as a threading.Event
        self.stop_event = threading.Event()
        # Create threads
        self.control_msg = None
        self.control_thread = threading.Thread(target=self.process_and_control, args=(self.control_msg, self.stop_event))
        self.command_thread = threading.Thread(target=self.receive_commands)
        
        self.control_thread.start()
        self.command_thread.start()
        
        rospy.spin()

if __name__ == '__main__':
    # goals
    goals = [
    (8.606064796447754, 2.346750497817993, 0.695545718232533, 0.7184818396093181),  # desk_1
    (8.754322052001953, 6.7733964920043945, 0.774108134204125, 0.6330533915547789),  # desk_2
    (6.705804824829102, 9.912127494812012, 0.7157463080949427, 0.6983603814997379),  # door
    (6.714288711547852, 11.711033668518066, 0.7038931321256822, 0.710305890828942),  # meeting room  
    ]
    
    #back
    back_goals =[
    (6.6801581382751465, 9.68292236328125,-0.3766679973756092, 0.9263483252821522), #back_door
    (8.751319885253906, 7.584722518920898, -0.7253242265223879,0.6884074131062939), #back_desk_2
    (8.408796310424805, 2.4658150672912598, -0.8522438688498349,0.5231447103888803),#back_desk_1
    (8.29449462890625, 0.49819743633270264, -0.7621448326238706,0.6474065601341497),#back_corner1
    ]

    #json array
    json_array = []

    interrupt_voltage_receive = False   #Default not to subscribe to voltage topic
    
    #init navigation
    map_navigation = MapNavigation()
    map_navigation.start_control()


