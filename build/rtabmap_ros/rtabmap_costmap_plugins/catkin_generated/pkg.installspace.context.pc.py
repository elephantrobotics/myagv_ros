# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;pcl_conversions;costmap_2d".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrtabmap_costmap_plugins;-lrtabmap_costmap_plugins2".split(';') if "-lrtabmap_costmap_plugins;-lrtabmap_costmap_plugins2" != "" else []
PROJECT_NAME = "rtabmap_costmap_plugins"
PROJECT_SPACE_DIR = "/home/er/myagv_ros/install"
PROJECT_VERSION = "0.21.1"
