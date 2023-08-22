#!/usr/bin/env python2

import rospy
from std_srvs.srv import Empty

rospy.init_node('myagv_navigation')

pause_service = rospy.ServiceProxy('/pause_navigation', Empty)

paused = False

def toggle_paused():
    global paused
    paused = not paused
    if paused:
        rospy.loginfo('Pausing navigation')
        pause_service()
    else:
        rospy.loginfo('Resuming navigation')

rospy.Timer(rospy.Duration(0.1), lambda event: None)

rospy.sleep(1) # Wait for services to be registered

rospy.loginfo('Press spacebar to toggle navigation state')

while not rospy.is_shutdown():
    key = raw_input()
    if key == ' ':
        toggle_paused()
    elif key == 'q':
        break
