; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-msg)


;//! \htmlinclude LandmarkDetections.msg.html

(cl:defclass <LandmarkDetections> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (landmarks
    :reader landmarks
    :initarg :landmarks
    :type (cl:vector rtabmap_msgs-msg:LandmarkDetection)
   :initform (cl:make-array 0 :element-type 'rtabmap_msgs-msg:LandmarkDetection :initial-element (cl:make-instance 'rtabmap_msgs-msg:LandmarkDetection))))
)

(cl:defclass LandmarkDetections (<LandmarkDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-msg:<LandmarkDetections> is deprecated: use rtabmap_msgs-msg:LandmarkDetections instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LandmarkDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:header-val is deprecated.  Use rtabmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'landmarks-val :lambda-list '(m))
(cl:defmethod landmarks-val ((m <LandmarkDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:landmarks-val is deprecated.  Use rtabmap_msgs-msg:landmarks instead.")
  (landmarks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkDetections>) ostream)
  "Serializes a message object of type '<LandmarkDetections>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkDetections>) istream)
  "Deserializes a message object of type '<LandmarkDetections>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtabmap_msgs-msg:LandmarkDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkDetections>)))
  "Returns string type for a message object of type '<LandmarkDetections>"
  "rtabmap_msgs/LandmarkDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkDetections)))
  "Returns string type for a message object of type 'LandmarkDetections"
  "rtabmap_msgs/LandmarkDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkDetections>)))
  "Returns md5sum for a message object of type '<LandmarkDetections>"
  "6dd251c7971c681b62f6a4fbf33ff4ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkDetections)))
  "Returns md5sum for a message object of type 'LandmarkDetections"
  "6dd251c7971c681b62f6a4fbf33ff4ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkDetections>)))
  "Returns full string definition for message of type '<LandmarkDetections>"
  (cl:format cl:nil "~%# header.stamp: the timestamp of the detection (e.g. image timestamp)~%# header.frame_id: the base frame of pose (e.g., camera optical frame)~%std_msgs/Header header~%~%LandmarkDetection[] landmarks~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/LandmarkDetection~%~%# header.stamp: the timestamp of the detection (e.g. image timestamp)~%# header.frame_id: the base frame of pose (e.g., camera optical frame)~%std_msgs/Header header~%~%# Landmark's frame id~%string landmark_frame_id~%~%# Landmark's unique ID: should be >0~%int32 id~%~%# Size in meters of the landmark/tag (optional, set 0 to not use it).~%float32 size~%~%# Pose of the landmark in header.frame_id frame.~%# If covariance is unknown, keep it as null matrix.~%# rtabmap_slam/rtabmap's landmark_angular_variance and~%# landmark_linear_variance parameters can be used~%# for convenience if covariance is null.~%geometry_msgs/PoseWithCovariance pose~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkDetections)))
  "Returns full string definition for message of type 'LandmarkDetections"
  (cl:format cl:nil "~%# header.stamp: the timestamp of the detection (e.g. image timestamp)~%# header.frame_id: the base frame of pose (e.g., camera optical frame)~%std_msgs/Header header~%~%LandmarkDetection[] landmarks~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/LandmarkDetection~%~%# header.stamp: the timestamp of the detection (e.g. image timestamp)~%# header.frame_id: the base frame of pose (e.g., camera optical frame)~%std_msgs/Header header~%~%# Landmark's frame id~%string landmark_frame_id~%~%# Landmark's unique ID: should be >0~%int32 id~%~%# Size in meters of the landmark/tag (optional, set 0 to not use it).~%float32 size~%~%# Pose of the landmark in header.frame_id frame.~%# If covariance is unknown, keep it as null matrix.~%# rtabmap_slam/rtabmap's landmark_angular_variance and~%# landmark_linear_variance parameters can be used~%# for convenience if covariance is null.~%geometry_msgs/PoseWithCovariance pose~%~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkDetections>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkDetections
    (cl:cons ':header (header msg))
    (cl:cons ':landmarks (landmarks msg))
))
