; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-msg)


;//! \htmlinclude MapGraph.msg.html

(cl:defclass <MapGraph> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mapToOdom
    :reader mapToOdom
    :initarg :mapToOdom
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (posesId
    :reader posesId
    :initarg :posesId
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (links
    :reader links
    :initarg :links
    :type (cl:vector rtabmap_msgs-msg:Link)
   :initform (cl:make-array 0 :element-type 'rtabmap_msgs-msg:Link :initial-element (cl:make-instance 'rtabmap_msgs-msg:Link))))
)

(cl:defclass MapGraph (<MapGraph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapGraph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapGraph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-msg:<MapGraph> is deprecated: use rtabmap_msgs-msg:MapGraph instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:header-val is deprecated.  Use rtabmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mapToOdom-val :lambda-list '(m))
(cl:defmethod mapToOdom-val ((m <MapGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:mapToOdom-val is deprecated.  Use rtabmap_msgs-msg:mapToOdom instead.")
  (mapToOdom m))

(cl:ensure-generic-function 'posesId-val :lambda-list '(m))
(cl:defmethod posesId-val ((m <MapGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:posesId-val is deprecated.  Use rtabmap_msgs-msg:posesId instead.")
  (posesId m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <MapGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:poses-val is deprecated.  Use rtabmap_msgs-msg:poses instead.")
  (poses m))

(cl:ensure-generic-function 'links-val :lambda-list '(m))
(cl:defmethod links-val ((m <MapGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:links-val is deprecated.  Use rtabmap_msgs-msg:links instead.")
  (links m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapGraph>) ostream)
  "Serializes a message object of type '<MapGraph>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mapToOdom) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'posesId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'posesId))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'links))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'links))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapGraph>) istream)
  "Deserializes a message object of type '<MapGraph>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mapToOdom) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'posesId) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'posesId)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'links) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'links)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtabmap_msgs-msg:Link))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapGraph>)))
  "Returns string type for a message object of type '<MapGraph>"
  "rtabmap_msgs/MapGraph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapGraph)))
  "Returns string type for a message object of type 'MapGraph"
  "rtabmap_msgs/MapGraph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapGraph>)))
  "Returns md5sum for a message object of type '<MapGraph>"
  "903c2e44ed7e275e08ef323188cb38ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapGraph)))
  "Returns md5sum for a message object of type 'MapGraph"
  "903c2e44ed7e275e08ef323188cb38ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapGraph>)))
  "Returns full string definition for message of type '<MapGraph>"
  (cl:format cl:nil "~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapGraph)))
  "Returns full string definition for message of type 'MapGraph"
  (cl:format cl:nil "~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapGraph>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mapToOdom))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'posesId) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'links) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapGraph>))
  "Converts a ROS message object to a list"
  (cl:list 'MapGraph
    (cl:cons ':header (header msg))
    (cl:cons ':mapToOdom (mapToOdom msg))
    (cl:cons ':posesId (posesId msg))
    (cl:cons ':poses (poses msg))
    (cl:cons ':links (links msg))
))
