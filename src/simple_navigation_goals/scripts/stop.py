#!/usr/bin/env python

import rospy
from actionlib_msgs.msg import GoalID
from geometry_msgs.msg import Twist

if __name__ == '__main__':
    rospy.init_node('cancel_goal')

    pub = rospy.Publisher('/move_base/cancel', GoalID, queue_size=10)
    rospy.sleep(1)  # Wait for publisher to connect

    goal_id = GoalID()
    pub.publish(goal_id)

    rospy.loginfo('Cancelled current goal')






    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

    while not rospy.is_shutdown():
        twist = Twist()
        twist.linear.x = 0.0
        twist.linear.y = 0.0
        twist.linear.z = 0.0
        twist.angular.x = 0.0
        twist.angular.y = 0.0
        twist.angular.z = 0.0
        pub.publish(twist)
        rospy.sleep(0.1)
