# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;image_geometry;laser_geometry;message_filters;nav_msgs;nodelet;pcl_conversions;pcl_ros;pluginlib;roscpp;sensor_msgs;rtabmap_conversions;rtabmap_msgs;rtabmap_util;rtabmap_sync".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrtabmap_odom;-lrtabmap_odom_plugins".split(';') if "-lrtabmap_odom;-lrtabmap_odom_plugins" != "" else []
PROJECT_NAME = "rtabmap_odom"
PROJECT_SPACE_DIR = "/home/er/myagv_ros/install"
PROJECT_VERSION = "0.21.1"
