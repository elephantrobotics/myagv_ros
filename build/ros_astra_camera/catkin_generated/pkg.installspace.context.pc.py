# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;dynamic_reconfigure;image_geometry;image_transport;message_runtime;roscpp;sensor_msgs;tf2;tf2_ros;std_srvs;message_filters;camera_info_manager".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lastra_camera".split(';') if "-lastra_camera" != "" else []
PROJECT_NAME = "astra_camera"
PROJECT_SPACE_DIR = "/home/er/myagv_ros/install"
PROJECT_VERSION = "1.2.3"
