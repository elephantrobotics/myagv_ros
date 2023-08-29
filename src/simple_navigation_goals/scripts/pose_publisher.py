#!/usr/bin/env python
import rospy
import time
from geometry_msgs.msg import PoseWithCovarianceStamped
from tf.transformations import quaternion_from_euler
from std_srvs.srv import Empty

if __name__ == '__main__':
    #rospy.init_node('set_robot_pose')


    #rospy.wait_for_service('/global_localization')


    #set_pose = rospy.ServiceProxy('/global_localization', Empty)


    #set_pose()


    #rospy.sleep(0.5)

    
    pub = rospy.Publisher('initialpose', PoseWithCovarianceStamped, queue_size=10)
    rospy.init_node('set_robot_pose', anonymous=True)
    #rate = rospy.Rate(10)
    #while pub.get_num_connections() < 1:
    #    time.sleep(0.1)


    pose = PoseWithCovarianceStamped()
    pose.header.seq = 0
    pose.header.stamp.secs = 0
    pose.header.stamp.nsecs = 0
    pose.header.frame_id = 'map'
    pose.pose.pose.position.x = 0.0201717317104
    pose.pose.pose.position.y = 0.0658675357699
    pose.pose.pose.position.z = 0.0
    q = quaternion_from_euler(0, 0, 1.57)  
    pose.pose.pose.orientation.x = 0.0
    pose.pose.pose.orientation.y = 0.0
    pose.pose.pose.orientation.z = -1.02788762886e-05
    pose.pose.pose.orientation.w =0.999995620035
    pose.pose.covariance = [0.25, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
    0.0, 0.0, 0.0, 0.0, 0.0, 0.068533892326654787]
    rospy.sleep(1)
    pub.publish(pose)
    rospy.loginfo('Published robot pose: %s' % pose)
