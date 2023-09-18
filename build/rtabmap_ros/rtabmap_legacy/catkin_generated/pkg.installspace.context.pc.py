# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "dynamic_reconfigure;image_transport;rtabmap_conversions;rtabmap_msgs;rtabmap_util".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrtabmap_legacy_plugins".split(';') if "-lrtabmap_legacy_plugins" != "" else []
PROJECT_NAME = "rtabmap_legacy"
PROJECT_SPACE_DIR = "/home/er/myagv_ros/install"
PROJECT_VERSION = "0.21.1"
