#coding=UTF-8
import rospy
import tf2_ros
import tf_conversions
import geometry_msgs.msg

rospy.init_node('tf_listener')

tf_buffer = tf2_ros.Buffer()
tf_listener = tf2_ros.TransformListener(tf_buffer)

while not rospy.is_shutdown():
    try:
        transform = tf_buffer.lookup_transform('map', 'base_up', rospy.Time(0), rospy.Duration(1.0))
        # 获取变换矩阵
        translation = transform.transform.translation
        rotation = transform.transform.rotation

        # 获取位姿坐标
        x = translation.x
        y = translation.y
        z = translation.z
       
        # 打印位姿信息
        rospy.loginfo("============================")
        rospy.loginfo("        当前位置")
        rospy.loginfo("============================")
        rospy.loginfo("X 坐标：{}".format(x))
        rospy.loginfo("Y 坐标：{}".format(y))
        rospy.loginfo("Z 坐标：{}".format(z))
        rospy.loginfo("                            ")

        # 获取四元数的欧拉角表示
        euler = tf_conversions.transformations.euler_from_quaternion([rotation.x, rotation.y, rotation.z, rotation.w])
        tx = euler[0]  # Roll
        ty = euler[1]  # Pitch
        tw = euler[2]  # Yaw

        # 打印姿态信息
        rospy.loginfo("============================")
        rospy.loginfo("        当前姿态")
        rospy.loginfo("============================")
        rospy.loginfo("TX 姿态：{}".format(tx))
        rospy.loginfo("TY 姿态：{}".format(ty))
        rospy.loginfo("TW 姿态：{}".format(tw))
        rospy.loginfo("                            ")

    except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException) as e:
        rospy.logerr("TF变换查询失败：{}".format(e))

    rospy.sleep(1.0)