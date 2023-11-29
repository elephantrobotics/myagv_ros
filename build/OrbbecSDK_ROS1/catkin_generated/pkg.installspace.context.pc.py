# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "camera_info_manager;cv_bridge;dynamic_reconfigure;image_geometry;image_transport;message_filters;message_runtime;roscpp;sensor_msgs;std_srvs;tf2;tf2_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lorbbec_camera".split(';') if "-lorbbec_camera" != "" else []
PROJECT_NAME = "orbbec_camera"
PROJECT_SPACE_DIR = "/home/er/myagv_ros/install"
PROJECT_VERSION = "1.3.9"
