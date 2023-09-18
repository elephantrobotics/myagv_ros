; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude SetLabel-request.msg.html

(cl:defclass <SetLabel-request> (roslisp-msg-protocol:ros-message)
  ((node_id
    :reader node_id
    :initarg :node_id
    :type cl:integer
    :initform 0)
   (node_label
    :reader node_label
    :initarg :node_label
    :type cl:string
    :initform ""))
)

(cl:defclass SetLabel-request (<SetLabel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLabel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLabel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<SetLabel-request> is deprecated: use rtabmap_msgs-srv:SetLabel-request instead.")))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <SetLabel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:node_id-val is deprecated.  Use rtabmap_msgs-srv:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'node_label-val :lambda-list '(m))
(cl:defmethod node_label-val ((m <SetLabel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:node_label-val is deprecated.  Use rtabmap_msgs-srv:node_label instead.")
  (node_label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLabel-request>) ostream)
  "Serializes a message object of type '<SetLabel-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLabel-request>) istream)
  "Deserializes a message object of type '<SetLabel-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLabel-request>)))
  "Returns string type for a service object of type '<SetLabel-request>"
  "rtabmap_msgs/SetLabelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLabel-request)))
  "Returns string type for a service object of type 'SetLabel-request"
  "rtabmap_msgs/SetLabelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLabel-request>)))
  "Returns md5sum for a message object of type '<SetLabel-request>"
  "baadfb04a43ec26085eb7bebc9a80862")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLabel-request)))
  "Returns md5sum for a message object of type 'SetLabel-request"
  "baadfb04a43ec26085eb7bebc9a80862")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLabel-request>)))
  "Returns full string definition for message of type '<SetLabel-request>"
  (cl:format cl:nil "#request~%# Set node_id = 0 to set label to last node~%int32 node_id~%string node_label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLabel-request)))
  "Returns full string definition for message of type 'SetLabel-request"
  (cl:format cl:nil "#request~%# Set node_id = 0 to set label to last node~%int32 node_id~%string node_label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLabel-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'node_label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLabel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLabel-request
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':node_label (node_label msg))
))
;//! \htmlinclude SetLabel-response.msg.html

(cl:defclass <SetLabel-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLabel-response (<SetLabel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLabel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLabel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<SetLabel-response> is deprecated: use rtabmap_msgs-srv:SetLabel-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLabel-response>) ostream)
  "Serializes a message object of type '<SetLabel-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLabel-response>) istream)
  "Deserializes a message object of type '<SetLabel-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLabel-response>)))
  "Returns string type for a service object of type '<SetLabel-response>"
  "rtabmap_msgs/SetLabelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLabel-response)))
  "Returns string type for a service object of type 'SetLabel-response"
  "rtabmap_msgs/SetLabelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLabel-response>)))
  "Returns md5sum for a message object of type '<SetLabel-response>"
  "baadfb04a43ec26085eb7bebc9a80862")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLabel-response)))
  "Returns md5sum for a message object of type 'SetLabel-response"
  "baadfb04a43ec26085eb7bebc9a80862")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLabel-response>)))
  "Returns full string definition for message of type '<SetLabel-response>"
  (cl:format cl:nil "#response ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLabel-response)))
  "Returns full string definition for message of type 'SetLabel-response"
  (cl:format cl:nil "#response ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLabel-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLabel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLabel-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLabel)))
  'SetLabel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLabel)))
  'SetLabel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLabel)))
  "Returns string type for a service object of type '<SetLabel>"
  "rtabmap_msgs/SetLabel")