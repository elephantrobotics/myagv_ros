# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;sensor_msgs;std_msgs;pcl_conversions;pluginlib;rviz;tf;rtabmap_conversions;rtabmap_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrtabmap_rviz_plugins".split(';') if "-lrtabmap_rviz_plugins" != "" else []
PROJECT_NAME = "rtabmap_rviz_plugins"
PROJECT_SPACE_DIR = "/home/er/myagv_ros/install"
PROJECT_VERSION = "0.21.1"
