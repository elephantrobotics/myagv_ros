#!/usr/bin/env python

import rospy
from std_msgs.msg import Bool

rospy.init_node('myagv_navigation')

pub = rospy.Publisher('/move_base/move', Bool, queue_size=1)

paused = False

def toggle_paused():
    global paused
    paused = not paused
    pub.publish(Bool(not paused))

rospy.Timer(rospy.Duration(0.1), lambda event: None)

rospy.sleep(1) # Wait for publishers to be registered

rospy.loginfo('Press spacebar to toggle navigation state')

while not rospy.is_shutdown():
    key = raw_input()
    if key == ' ':
        toggle_paused()
        rospy.loginfo('Navigation %s', 'paused' if paused else 'resumed')
    elif key == 'q':
        break
