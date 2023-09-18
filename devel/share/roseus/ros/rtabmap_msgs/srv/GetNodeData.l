;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::GetNodeData)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'GetNodeData (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::GETNODEDATA")
  (make-package "RTABMAP_MSGS::GETNODEDATA"))
(unless (find-package "RTABMAP_MSGS::GETNODEDATAREQUEST")
  (make-package "RTABMAP_MSGS::GETNODEDATAREQUEST"))
(unless (find-package "RTABMAP_MSGS::GETNODEDATARESPONSE")
  (make-package "RTABMAP_MSGS::GETNODEDATARESPONSE"))

(in-package "ROS")





(defclass rtabmap_msgs::GetNodeDataRequest
  :super ros::object
  :slots (_ids _images _scan _grid _user_data ))

(defmethod rtabmap_msgs::GetNodeDataRequest
  (:init
   (&key
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:images __images) nil)
    ((:scan __scan) nil)
    ((:grid __grid) nil)
    ((:user_data __user_data) nil)
    )
   (send-super :init)
   (setq _ids __ids)
   (setq _images __images)
   (setq _scan __scan)
   (setq _grid __grid)
   (setq _user_data __user_data)
   self)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:images
   (&optional (__images :null))
   (if (not (eq __images :null)) (setq _images __images)) _images)
  (:scan
   (&optional (__scan :null))
   (if (not (eq __scan :null)) (setq _scan __scan)) _scan)
  (:grid
   (&optional (__grid :null))
   (if (not (eq __grid :null)) (setq _grid __grid)) _grid)
  (:user_data
   (&optional (__user_data :null))
   (if (not (eq __user_data :null)) (setq _user_data __user_data)) _user_data)
  (:serialization-length
   ()
   (+
    ;; int32[] _ids
    (* 4    (length _ids)) 4
    ;; bool _images
    1
    ;; bool _scan
    1
    ;; bool _grid
    1
    ;; bool _user_data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; bool _images
       (if _images (write-byte -1 s) (write-byte 0 s))
     ;; bool _scan
       (if _scan (write-byte -1 s) (write-byte 0 s))
     ;; bool _grid
       (if _grid (write-byte -1 s) (write-byte 0 s))
     ;; bool _user_data
       (if _user_data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool _images
     (setq _images (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _scan
     (setq _scan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _grid
     (setq _grid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _user_data
     (setq _user_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rtabmap_msgs::GetNodeDataResponse
  :super ros::object
  :slots (_data ))

(defmethod rtabmap_msgs::GetNodeDataResponse
  (:init
   (&key
    ((:data __data) ())
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
    ;; rtabmap_msgs/NodeData[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rtabmap_msgs/NodeData[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rtabmap_msgs/NodeData[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance rtabmap_msgs::NodeData :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rtabmap_msgs::GetNodeData
  :super ros::object
  :slots ())

(setf (get rtabmap_msgs::GetNodeData :md5sum-) "773fdbd03b6a0593a7a3b8996a27ca6b")
(setf (get rtabmap_msgs::GetNodeData :datatype-) "rtabmap_msgs/GetNodeData")
(setf (get rtabmap_msgs::GetNodeData :request) rtabmap_msgs::GetNodeDataRequest)
(setf (get rtabmap_msgs::GetNodeData :response) rtabmap_msgs::GetNodeDataResponse)

(defmethod rtabmap_msgs::GetNodeDataRequest
  (:response () (instance rtabmap_msgs::GetNodeDataResponse :init)))

(setf (get rtabmap_msgs::GetNodeDataRequest :md5sum-) "773fdbd03b6a0593a7a3b8996a27ca6b")
(setf (get rtabmap_msgs::GetNodeDataRequest :datatype-) "rtabmap_msgs/GetNodeDataRequest")
(setf (get rtabmap_msgs::GetNodeDataRequest :definition-)
      "#request
int32[] ids
bool images
bool scan
bool grid
bool user_data
---
#response
NodeData[] data


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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: rtabmap_msgs/GPS

float64 stamp      # in seconds
float64 longitude  # DD format
float64 latitude   # DD format
float64 altitude   # in meters
float64 error      # in meters
float64 bearing    # North 0->360 deg
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
MSG: rtabmap_msgs/EnvSensor

Header header

# EnvSensor
int32 type
")

(setf (get rtabmap_msgs::GetNodeDataResponse :md5sum-) "773fdbd03b6a0593a7a3b8996a27ca6b")
(setf (get rtabmap_msgs::GetNodeDataResponse :datatype-) "rtabmap_msgs/GetNodeDataResponse")
(setf (get rtabmap_msgs::GetNodeDataResponse :definition-)
      "#request
int32[] ids
bool images
bool scan
bool grid
bool user_data
---
#response
NodeData[] data


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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: rtabmap_msgs/GPS

float64 stamp      # in seconds
float64 longitude  # DD format
float64 latitude   # DD format
float64 altitude   # in meters
float64 error      # in meters
float64 bearing    # North 0->360 deg
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
MSG: rtabmap_msgs/EnvSensor

Header header

# EnvSensor
int32 type
")



(provide :rtabmap_msgs/GetNodeData "773fdbd03b6a0593a7a3b8996a27ca6b")


