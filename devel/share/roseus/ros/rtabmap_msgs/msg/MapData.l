;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::MapData)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'MapData (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::MAPDATA")
  (make-package "RTABMAP_MSGS::MAPDATA"))

(in-package "ROS")
;;//! \htmlinclude MapData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::MapData
  :super ros::object
  :slots (_header _graph _nodes ))

(defmethod rtabmap_msgs::MapData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:graph __graph) (instance rtabmap_msgs::MapGraph :init))
    ((:nodes __nodes) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _graph __graph)
   (setq _nodes __nodes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:graph
   (&rest __graph)
   (if (keywordp (car __graph))
       (send* _graph __graph)
     (progn
       (if __graph (setq _graph (car __graph)))
       _graph)))
  (:nodes
   (&rest __nodes)
   (if (keywordp (car __nodes))
       (send* _nodes __nodes)
     (progn
       (if __nodes (setq _nodes (car __nodes)))
       _nodes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rtabmap_msgs/MapGraph _graph
    (send _graph :serialization-length)
    ;; rtabmap_msgs/NodeData[] _nodes
    (apply #'+ (send-all _nodes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rtabmap_msgs/MapGraph _graph
       (send _graph :serialize s)
     ;; rtabmap_msgs/NodeData[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rtabmap_msgs/MapGraph _graph
     (send _graph :deserialize buf ptr-) (incf ptr- (send _graph :serialization-length))
   ;; rtabmap_msgs/NodeData[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (let (r) (dotimes (i n) (push (instance rtabmap_msgs::NodeData :init) r)) r))
     (dolist (elem- _nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rtabmap_msgs::MapData :md5sum-) "e20572a812f1f74060a7f5d1a39f9106")
(setf (get rtabmap_msgs::MapData :datatype-) "rtabmap_msgs/MapData")
(setf (get rtabmap_msgs::MapData :definition-)
      "
Header header

##################
# Optimized graph
##################
MapGraph graph

##################
# Graph data
##################
NodeData[] nodes




================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: rtabmap_msgs/MapGraph

Header header

##
# /map to /odom transform
# Always identity when the graph is optimized from the latest pose.
##
geometry_msgs/Transform mapToOdom

# The poses
int32[] posesId
geometry_msgs/Pose[] poses

# The links
Link[] links




================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: rtabmap_msgs/Link
#class rtabmap::Link
#{
#   int from;
#   int to;
#   Type type;
#   Transform transform;
#   cv::Mat(6,6,CV_64FC1) information;
#}

int32 fromId
int32 toId
int32 type
geometry_msgs/Transform transform
float64[36] information
================================================================================
MSG: rtabmap_msgs/NodeData

int32 id
int32 mapId
int32 weight
float64 stamp
string label

# Pose from odometry not corrected
geometry_msgs/Pose pose

# Ground truth (optional)
geometry_msgs/Pose groundTruthPose

# GPS (optional)
GPS gps

# compressed image in /camera_link frame
# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"
uint8[] image

# compressed depth image in /camera_link frame
# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"
uint8[] depth

# Camera models
float32[] fx
float32[] fy
float32[] cx
float32[] cy
float32[] width
float32[] height
float32[] baseline
# local transform (/base_link -> /camera_link)
geometry_msgs/Transform[] localTransform

# compressed 2D or 3D laser scan
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] laserScan
int32 laserScanMaxPts
float32 laserScanMaxRange
int32 laserScanFormat
# local transform (/base_link -> /base_laser)
geometry_msgs/Transform laserScanLocalTransform

# compressed user data
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] userData

# compressed occupancy grid
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] grid_ground
uint8[] grid_obstacles
uint8[] grid_empty_cells
float32 grid_cell_size
Point3f grid_view_point

# std::multimap<wordId, index>
# std::vector<cv::Keypoint>
# std::vector<cv::Point3f>
int32[] wordIdKeys
int32[] wordIdValues
KeyPoint[] wordKpts
Point3f[] wordPts
# compressed descriptors
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] wordDescriptors

GlobalDescriptor[] globalDescriptors

EnvSensor[] env_sensors

================================================================================
MSG: rtabmap_msgs/GPS

float64 stamp      # in seconds
float64 longitude  # DD format
float64 latitude   # DD format
float64 altitude   # in meters
float64 error      # in meters
float64 bearing    # North 0->360 deg
================================================================================
MSG: rtabmap_msgs/Point3f
#class cv::Point3f
#{
#    float x;
#    float y;
#    float z;
#}

float32 x
float32 y
float32 z
================================================================================
MSG: rtabmap_msgs/KeyPoint
#class cv::KeyPoint
#{
#    Point2f pt;
#    float size;
#    float angle;
#    float response;
#    int octave;
#    int class_id;
#}

Point2f pt
float32 size
float32 angle
float32 response
int32 octave
int32 class_id
================================================================================
MSG: rtabmap_msgs/Point2f
#class cv::Point2f
#{
#    float x;
#    float y;
#}

float32 x
float32 y
================================================================================
MSG: rtabmap_msgs/GlobalDescriptor

Header header

# compressed global descriptor
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
int32 type
uint8[] info
uint8[] data
================================================================================
MSG: rtabmap_msgs/EnvSensor

Header header

# EnvSensor
int32 type
float64 value
")



(provide :rtabmap_msgs/MapData "e20572a812f1f74060a7f5d1a39f9106")


