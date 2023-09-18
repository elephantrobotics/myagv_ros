; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude SetGoal-request.msg.html

(cl:defclass <SetGoal-request> (roslisp-msg-protocol:ros-message)
  ((node_id
    :reader node_id
    :initarg :node_id
    :type cl:integer
    :initform 0)
   (node_label
    :reader node_label
    :initarg :node_label
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass SetGoal-request (<SetGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<SetGoal-request> is deprecated: use rtabmap_msgs-srv:SetGoal-request instead.")))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <SetGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:node_id-val is deprecated.  Use rtabmap_msgs-srv:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'node_label-val :lambda-list '(m))
(cl:defmethod node_label-val ((m <SetGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:node_label-val is deprecated.  Use rtabmap_msgs-srv:node_label instead.")
  (node_label m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <SetGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:frame_id-val is deprecated.  Use rtabmap_msgs-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-request>) ostream)
  "Serializes a message object of type '<SetGoal-request>"
  (cl:let* ((signed (cl:slot-value msg 'node_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_label))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-request>) istream)
  "Deserializes a message object of type '<SetGoal-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-request>)))
  "Returns string type for a service object of type '<SetGoal-request>"
  "rtabmap_msgs/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-request)))
  "Returns string type for a service object of type 'SetGoal-request"
  "rtabmap_msgs/SetGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-request>)))
  "Returns md5sum for a message object of type '<SetGoal-request>"
  "9ab4a370e8733a44f7bff8c581f9c5bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-request)))
  "Returns md5sum for a message object of type 'SetGoal-request"
  "9ab4a370e8733a44f7bff8c581f9c5bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-request>)))
  "Returns full string definition for message of type '<SetGoal-request>"
  (cl:format cl:nil "#request~%~%# Set either node_id or node_label~%int32 node_id~%string node_label~%~%# optional: if not set, the base frame of the robot is used~%string frame_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-request)))
  "Returns full string definition for message of type 'SetGoal-request"
  (cl:format cl:nil "#request~%~%# Set either node_id or node_label~%int32 node_id~%string node_label~%~%# optional: if not set, the base frame of the robot is used~%string frame_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'node_label))
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-request
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':node_label (node_label msg))
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude SetGoal-response.msg.html

(cl:defclass <SetGoal-response> (roslisp-msg-protocol:ros-message)
  ((path_ids
    :reader path_ids
    :initarg :path_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (path_poses
    :reader path_poses
    :initarg :path_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (planning_time
    :reader planning_time
    :initarg :planning_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetGoal-response (<SetGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<SetGoal-response> is deprecated: use rtabmap_msgs-srv:SetGoal-response instead.")))

(cl:ensure-generic-function 'path_ids-val :lambda-list '(m))
(cl:defmethod path_ids-val ((m <SetGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:path_ids-val is deprecated.  Use rtabmap_msgs-srv:path_ids instead.")
  (path_ids m))

(cl:ensure-generic-function 'path_poses-val :lambda-list '(m))
(cl:defmethod path_poses-val ((m <SetGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:path_poses-val is deprecated.  Use rtabmap_msgs-srv:path_poses instead.")
  (path_poses m))

(cl:ensure-generic-function 'planning_time-val :lambda-list '(m))
(cl:defmethod planning_time-val ((m <SetGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:planning_time-val is deprecated.  Use rtabmap_msgs-srv:planning_time instead.")
  (planning_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoal-response>) ostream)
  "Serializes a message object of type '<SetGoal-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_ids))))
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
   (cl:slot-value msg 'path_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_poses))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'planning_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoal-response>) istream)
  "Deserializes a message object of type '<SetGoal-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_ids)))
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
  (cl:setf (cl:slot-value msg 'path_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'planning_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoal-response>)))
  "Returns string type for a service object of type '<SetGoal-response>"
  "rtabmap_msgs/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal-response)))
  "Returns string type for a service object of type 'SetGoal-response"
  "rtabmap_msgs/SetGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoal-response>)))
  "Returns md5sum for a message object of type '<SetGoal-response>"
  "9ab4a370e8733a44f7bff8c581f9c5bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoal-response)))
  "Returns md5sum for a message object of type 'SetGoal-response"
  "9ab4a370e8733a44f7bff8c581f9c5bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoal-response>)))
  "Returns full string definition for message of type '<SetGoal-response>"
  (cl:format cl:nil "~%#response ~%int32[] path_ids~%geometry_msgs/Pose[] path_poses~%float32 planning_time~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoal-response)))
  "Returns full string definition for message of type 'SetGoal-response"
  (cl:format cl:nil "~%#response ~%int32[] path_ids~%geometry_msgs/Pose[] path_poses~%float32 planning_time~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoal-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoal-response
    (cl:cons ':path_ids (path_ids msg))
    (cl:cons ':path_poses (path_poses msg))
    (cl:cons ':planning_time (planning_time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGoal)))
  'SetGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoal)))
  "Returns string type for a service object of type '<SetGoal>"
  "rtabmap_msgs/SetGoal")