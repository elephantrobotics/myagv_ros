; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude RemoveLabel-request.msg.html

(cl:defclass <RemoveLabel-request> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass RemoveLabel-request (<RemoveLabel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveLabel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveLabel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<RemoveLabel-request> is deprecated: use rtabmap_msgs-srv:RemoveLabel-request instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <RemoveLabel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:label-val is deprecated.  Use rtabmap_msgs-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveLabel-request>) ostream)
  "Serializes a message object of type '<RemoveLabel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveLabel-request>) istream)
  "Deserializes a message object of type '<RemoveLabel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveLabel-request>)))
  "Returns string type for a service object of type '<RemoveLabel-request>"
  "rtabmap_msgs/RemoveLabelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveLabel-request)))
  "Returns string type for a service object of type 'RemoveLabel-request"
  "rtabmap_msgs/RemoveLabelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveLabel-request>)))
  "Returns md5sum for a message object of type '<RemoveLabel-request>"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveLabel-request)))
  "Returns md5sum for a message object of type 'RemoveLabel-request"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveLabel-request>)))
  "Returns full string definition for message of type '<RemoveLabel-request>"
  (cl:format cl:nil "#request~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveLabel-request)))
  "Returns full string definition for message of type 'RemoveLabel-request"
  (cl:format cl:nil "#request~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveLabel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveLabel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveLabel-request
    (cl:cons ':label (label msg))
))
;//! \htmlinclude RemoveLabel-response.msg.html

(cl:defclass <RemoveLabel-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RemoveLabel-response (<RemoveLabel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveLabel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveLabel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<RemoveLabel-response> is deprecated: use rtabmap_msgs-srv:RemoveLabel-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveLabel-response>) ostream)
  "Serializes a message object of type '<RemoveLabel-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveLabel-response>) istream)
  "Deserializes a message object of type '<RemoveLabel-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveLabel-response>)))
  "Returns string type for a service object of type '<RemoveLabel-response>"
  "rtabmap_msgs/RemoveLabelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveLabel-response)))
  "Returns string type for a service object of type 'RemoveLabel-response"
  "rtabmap_msgs/RemoveLabelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveLabel-response>)))
  "Returns md5sum for a message object of type '<RemoveLabel-response>"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveLabel-response)))
  "Returns md5sum for a message object of type 'RemoveLabel-response"
  "ea23f97416b04c6151d2b576c0665ac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveLabel-response>)))
  "Returns full string definition for message of type '<RemoveLabel-response>"
  (cl:format cl:nil "#response ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveLabel-response)))
  "Returns full string definition for message of type 'RemoveLabel-response"
  (cl:format cl:nil "#response ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveLabel-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveLabel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveLabel-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveLabel)))
  'RemoveLabel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveLabel)))
  'RemoveLabel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveLabel)))
  "Returns string type for a service object of type '<RemoveLabel>"
  "rtabmap_msgs/RemoveLabel")