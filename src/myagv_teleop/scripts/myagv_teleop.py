#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
from geometry_msgs.msg import Twist
import sys, select, termios, tty

msg = """
Control myagv!
---------------------------
Moving around:
   u    i    o
   j    k    l
        ,     

space key, k : stop
i : foward
, : backward
j : turn left
l : turn right
u : left revolve
o : right revolve

CTRL-C to quit
"""

def getKey():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)
    
    rospy.init_node('myagv_teleop')
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    x = 0
    y = 0
    theta = 0

    try:
        print(msg)
        while(1):
            key = getKey()

            if key == ' ' or key == 'k' :
                x = 0
                y = 0
                theta = 0
            
            elif key == 'i':
                x = 0.5           
                y = 0
                theta = 0
            elif key == ',':
                x = -0.5          
                y = 0
                theta = 0
            elif key == 'j':
                x = 0            
                y = 0.5
                theta = 0
            elif key == 'l':
                x = 0            
                y = -0.5
                theta = 0
            elif key == 'u':
                x = 0            
                y = 0
                theta = 0.5
            elif key == 'o':
                x = 0            
                y = 0
                theta = -0.5
            elif key == '\x03':
                break

            twist = Twist()
            twist.linear.x = x; 
            twist.linear.y = y; 
            twist.linear.z = 0
            twist.angular.x = 0; 
            twist.angular.y = 0; 
            twist.angular.z = theta
            pub.publish(twist)

    except:
        print(e)

    finally:
        twist = Twist()
        twist.linear.x = 0; twist.linear.y = 0; twist.linear.z = 0
        twist.angular.x = 0; twist.angular.y = 0; twist.angular.z = 0
        pub.publish(twist)

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
