;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::LandmarkDetections)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'LandmarkDetections (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::LANDMARKDETECTIONS")
  (make-package "RTABMAP_MSGS::LANDMARKDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude LandmarkDetections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::LandmarkDetections
  :super ros::object
  :slots (_header _landmarks ))

(defmethod rtabmap_msgs::LandmarkDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:landmarks __landmarks) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _landmarks __landmarks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rtabmap_msgs/LandmarkDetection[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rtabmap_msgs/LandmarkDetection[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rtabmap_msgs/LandmarkDetection[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance rtabmap_msgs::LandmarkDetection :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rtabmap_msgs::LandmarkDetections :md5sum-) "6dd251c7971c681b62f6a4fbf33ff4ab")
(setf (get rtabmap_msgs::LandmarkDetections :datatype-) "rtabmap_msgs/LandmarkDetections")
(setf (get rtabmap_msgs::LandmarkDetections :definition-)
      "
# header.stamp: the timestamp of the detection (e.g. image timestamp)
# header.frame_id: the base frame of pose (e.g., camera optical frame)
std_msgs/Header header

LandmarkDetection[] landmarks



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
MSG: rtabmap_msgs/LandmarkDetection

# header.stamp: the timestamp of the detection (e.g. image timestamp)
# header.frame_id: the base frame of pose (e.g., camera optical frame)
std_msgs/Header header

# Landmark's frame id
string landmark_frame_id

# Landmark's unique ID: should be >0
int32 id

# Size in meters of the landmark/tag (optional, set 0 to not use it).
float32 size

# Pose of the landmark in header.frame_id frame.
# If covariance is unknown, keep it as null matrix.
# rtabmap_slam/rtabmap's landmark_angular_variance and
# landmark_linear_variance parameters can be used
# for convenience if covariance is null.
geometry_msgs/PoseWithCovariance pose



================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

")



(provide :rtabmap_msgs/LandmarkDetections "6dd251c7971c681b62f6a4fbf33ff4ab")


