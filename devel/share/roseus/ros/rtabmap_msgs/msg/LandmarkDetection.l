;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::LandmarkDetection)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'LandmarkDetection (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::LANDMARKDETECTION")
  (make-package "RTABMAP_MSGS::LANDMARKDETECTION"))

(in-package "ROS")
;;//! \htmlinclude LandmarkDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::LandmarkDetection
  :super ros::object
  :slots (_header _landmark_frame_id _id _size _pose ))

(defmethod rtabmap_msgs::LandmarkDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:landmark_frame_id __landmark_frame_id) "")
    ((:id __id) 0)
    ((:size __size) 0.0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _landmark_frame_id (string __landmark_frame_id))
   (setq _id (round __id))
   (setq _size (float __size))
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:landmark_frame_id
   (&optional __landmark_frame_id)
   (if __landmark_frame_id (setq _landmark_frame_id __landmark_frame_id)) _landmark_frame_id)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _landmark_frame_id
    4 (length _landmark_frame_id)
    ;; int32 _id
    4
    ;; float32 _size
    4
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _landmark_frame_id
       (write-long (length _landmark_frame_id) s) (princ _landmark_frame_id s)
     ;; int32 _id
       (write-long _id s)
     ;; float32 _size
       (sys::poke _size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _landmark_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _landmark_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _size
     (setq _size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get rtabmap_msgs::LandmarkDetection :md5sum-) "4e910c904de3409be6c1521a98c85c31")
(setf (get rtabmap_msgs::LandmarkDetection :datatype-) "rtabmap_msgs/LandmarkDetection")
(setf (get rtabmap_msgs::LandmarkDetection :definition-)
      "
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



(provide :rtabmap_msgs/LandmarkDetection "4e910c904de3409be6c1521a98c85c31")


