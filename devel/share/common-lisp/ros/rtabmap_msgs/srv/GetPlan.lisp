; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude GetPlan-request.msg.html

(cl:defclass <GetPlan-request> (roslisp-msg-protocol:ros-message)
  ((goal_node
    :reader goal_node
    :initarg :goal_node
    :type cl:integer
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (tolerance
    :reader tolerance
    :initarg :tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetPlan-request (<GetPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GetPlan-request> is deprecated: use rtabmap_msgs-srv:GetPlan-request instead.")))

(cl:ensure-generic-function 'goal_node-val :lambda-list '(m))
(cl:defmethod goal_node-val ((m <GetPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:goal_node-val is deprecated.  Use rtabmap_msgs-srv:goal_node instead.")
  (goal_node m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:goal-val is deprecated.  Use rtabmap_msgs-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'tolerance-val :lambda-list '(m))
(cl:defmethod tolerance-val ((m <GetPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:tolerance-val is deprecated.  Use rtabmap_msgs-srv:tolerance instead.")
  (tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlan-request>) ostream)
  "Serializes a message object of type '<GetPlan-request>"
  (cl:let* ((signed (cl:slot-value msg 'goal_node)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlan-request>) istream)
  "Deserializes a message object of type '<GetPlan-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_node) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlan-request>)))
  "Returns string type for a service object of type '<GetPlan-request>"
  "rtabmap_msgs/GetPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlan-request)))
  "Returns string type for a service object of type 'GetPlan-request"
  "rtabmap_msgs/GetPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlan-request>)))
  "Returns md5sum for a message object of type '<GetPlan-request>"
  "11e7a6b05e2b36bab483bec069bf36b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlan-request)))
  "Returns md5sum for a message object of type 'GetPlan-request"
  "11e7a6b05e2b36bab483bec069bf36b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlan-request>)))
  "Returns full string definition for message of type '<GetPlan-request>"
  (cl:format cl:nil "# Get a plan from the current position to the goal node or pose ~%~%# The final node of the goal (set 0 to use pose instead)~%int32 goal_node~%# The final pose of the goal position (used only if goalNodeId=0)~%geometry_msgs/PoseStamped goal~%~%# How many meters from the map's graph we can plan (0=infinite)~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlan-request)))
  "Returns full string definition for message of type 'GetPlan-request"
  (cl:format cl:nil "# Get a plan from the current position to the goal node or pose ~%~%# The final node of the goal (set 0 to use pose instead)~%int32 goal_node~%# The final pose of the goal position (used only if goalNodeId=0)~%geometry_msgs/PoseStamped goal~%~%# How many meters from the map's graph we can plan (0=infinite)~%float32 tolerance~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlan-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlan-request
    (cl:cons ':goal_node (goal_node msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':tolerance (tolerance msg))
))
;//! \htmlinclude GetPlan-response.msg.html

(cl:defclass <GetPlan-response> (roslisp-msg-protocol:ros-message)
  ((plan
    :reader plan
    :initarg :plan
    :type rtabmap_msgs-msg:Path
    :initform (cl:make-instance 'rtabmap_msgs-msg:Path)))
)

(cl:defclass GetPlan-response (<GetPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<GetPlan-response> is deprecated: use rtabmap_msgs-srv:GetPlan-response instead.")))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <GetPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:plan-val is deprecated.  Use rtabmap_msgs-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlan-response>) ostream)
  "Serializes a message object of type '<GetPlan-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlan-response>) istream)
  "Deserializes a message object of type '<GetPlan-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlan-response>)))
  "Returns string type for a service object of type '<GetPlan-response>"
  "rtabmap_msgs/GetPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlan-response)))
  "Returns string type for a service object of type 'GetPlan-response"
  "rtabmap_msgs/GetPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlan-response>)))
  "Returns md5sum for a message object of type '<GetPlan-response>"
  "11e7a6b05e2b36bab483bec069bf36b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlan-response)))
  "Returns md5sum for a message object of type 'GetPlan-response"
  "11e7a6b05e2b36bab483bec069bf36b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlan-response>)))
  "Returns full string definition for message of type '<GetPlan-response>"
  (cl:format cl:nil "Path plan~%~%================================================================================~%MSG: rtabmap_msgs/Path~%~%Header header~%~%int32[] nodeIds~%geometry_msgs/Pose[] poses~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlan-response)))
  "Returns full string definition for message of type 'GetPlan-response"
  (cl:format cl:nil "Path plan~%~%================================================================================~%MSG: rtabmap_msgs/Path~%~%Header header~%~%int32[] nodeIds~%geometry_msgs/Pose[] poses~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlan-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlan-response
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPlan)))
  'GetPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPlan)))
  'GetPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlan)))
  "Returns string type for a service object of type '<GetPlan>"
  "rtabmap_msgs/GetPlan")