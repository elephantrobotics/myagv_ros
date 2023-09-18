;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::GetMap2)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'GetMap2 (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::GETMAP2")
  (make-package "RTABMAP_MSGS::GETMAP2"))
(unless (find-package "RTABMAP_MSGS::GETMAP2REQUEST")
  (make-package "RTABMAP_MSGS::GETMAP2REQUEST"))
(unless (find-package "RTABMAP_MSGS::GETMAP2RESPONSE")
  (make-package "RTABMAP_MSGS::GETMAP2RESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::GetMap2Request
  :super ros::object
  :slots (_global _optimized _with_images _with_scans _with_user_data _with_grids _with_words _with_global_descriptors ))

(defmethod rtabmap_msgs::GetMap2Request
  (:init
   (&key
    ((:global __global) nil)
    ((:optimized __optimized) nil)
    ((:with_images __with_images) nil)
    ((:with_scans __with_scans) nil)
    ((:with_user_data __with_user_data) nil)
    ((:with_grids __with_grids) nil)
    ((:with_words __with_words) nil)
    ((:with_global_descriptors __with_global_descriptors) nil)
    )
   (send-super :init)
   (setq _global __global)
   (setq _optimized __optimized)
   (setq _with_images __with_images)
   (setq _with_scans __with_scans)
   (setq _with_user_data __with_user_data)
   (setq _with_grids __with_grids)
   (setq _with_words __with_words)
   (setq _with_global_descriptors __with_global_descriptors)
   self)
  (:global
   (&optional (__global :null))
   (if (not (eq __global :null)) (setq _global __global)) _global)
  (:optimized
   (&optional (__optimized :null))
   (if (not (eq __optimized :null)) (setq _optimized __optimized)) _optimized)
  (:with_images
   (&optional (__with_images :null))
   (if (not (eq __with_images :null)) (setq _with_images __with_images)) _with_images)
  (:with_scans
   (&optional (__with_scans :null))
   (if (not (eq __with_scans :null)) (setq _with_scans __with_scans)) _with_scans)
  (:with_user_data
   (&optional (__with_user_data :null))
   (if (not (eq __with_user_data :null)) (setq _with_user_data __with_user_data)) _with_user_data)
  (:with_grids
   (&optional (__with_grids :null))
   (if (not (eq __with_grids :null)) (setq _with_grids __with_grids)) _with_grids)
  (:with_words
   (&optional (__with_words :null))
   (if (not (eq __with_words :null)) (setq _with_words __with_words)) _with_words)
  (:with_global_descriptors
   (&optional (__with_global_descriptors :null))
   (if (not (eq __with_global_descriptors :null)) (setq _with_global_descriptors __with_global_descriptors)) _with_global_descriptors)
  (:serialization-length
   ()
   (+
    ;; bool _global
    1
    ;; bool _optimized
    1
    ;; bool _with_images
    1
    ;; bool _with_scans
    1
    ;; bool _with_user_data
    1
    ;; bool _with_grids
    1
    ;; bool _with_words
    1
    ;; bool _with_global_descriptors
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _global
       (if _global (write-byte -1 s) (write-byte 0 s))
     ;; bool _optimized
       (if _optimized (write-byte -1 s) (write-byte 0 s))
     ;; bool _with_images
       (if _with_images (write-byte -1 s) (write-byte 0 s))
     ;; bool _with_scans
       (if _with_scans (write-byte -1 s) (write-byte 0 s))
     ;; bool _with_user_data
       (if _with_user_data (write-byte -1 s) (write-byte 0 s))
     ;; bool _with_grids
       (if _with_grids (write-byte -1 s) (write-byte 0 s))
     ;; bool _with_words
       (if _with_words (write-byte -1 s) (write-byte 0 s))
     ;; bool _with_global_descriptors
       (if _with_global_descriptors (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _global
     (setq _global (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _optimized
     (setq _optimized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _with_images
     (setq _with_images (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _with_scans
     (setq _with_scans (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _with_user_data
     (setq _with_user_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _with_grids
     (setq _with_grids (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _with_words
     (setq _with_words (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _with_global_descriptors
     (setq _with_global_descriptors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rtabmap_msgs::GetMap2Response
  :super ros::object
  :slots (_data ))

(defmethod rtabmap_msgs::GetMap2Response
  (:init
   (&key
    ((:data __data) (instance rtabmap_msgs::MapData :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; rtabmap_msgs/MapData _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rtabmap_msgs/MapData _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rtabmap_msgs/MapData _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass rtabmap_msgs::GetMap2
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::GetMap2 :md5sum-) "07d04226ea1aa896bb51266a21c4b414")
(setf (get rtabmap_msgs::GetMap2 :datatype-) "rtabmap_msgs/GetMap2")
(setf (get rtabmap_msgs::GetMap2 :request) rtabmap_msgs::GetMap2Request)
(setf (get rtabmap_msgs::GetMap2 :response) rtabmap_msgs::GetMap2Response)

(defmethod rtabmap_msgs::GetMap2Request
  (:response () (instance rtabmap_msgs::GetMap2Response :init)))

(setf (get rtabmap_msgs::GetMap2Request :md5sum-) "07d04226ea1aa896bb51266a21c4b414")
(setf (get rtabmap_msgs::GetMap2Request :datatype-) "rtabmap_msgs/GetMap2Request")
(setf (get rtabmap_msgs::GetMap2Request :definition-)
      "#request
bool global
bool optimized
bool with_images
bool with_scans
bool with_user_data
bool with_grids
bool with_words
bool with_global_descriptors
---
#response
MapData data


================================================================================
MSG: rtabmap_msgs/MapData

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
")

(setf (get rtabmap_msgs::GetMap2Response :md5sum-) "07d04226ea1aa896bb51266a21c4b414")
(setf (get rtabmap_msgs::GetMap2Response :datatype-) "rtabmap_msgs/GetMap2Response")
(setf (get rtabmap_msgs::GetMap2Response :definition-)
      "#request
bool global
bool optimized
bool with_images
bool with_scans
bool with_user_data
bool with_grids
bool with_words
bool with_global_descriptors
---
#response
MapData data


================================================================================
MSG: rtabmap_msgs/MapData

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
")



(provide :rtabmap_msgs/GetMap2 "07d04226ea1aa896bb51266a21c4b414")


