# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "dynamic_reconfigure;geometry_msgs;move_base_msgs;nav_msgs;roscpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmove_base".split(';') if "-lmove_base" != "" else []
PROJECT_NAME = "move_base"
PROJECT_SPACE_DIR = "/home/er/myagv_ros/install"
PROJECT_VERSION = "1.17.3"
