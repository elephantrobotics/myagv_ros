; Auto-generated. Do not edit!


(cl:in-package orbbec_camera-srv)


;//! \htmlinclude SetString-request.msg.html

(cl:defclass <SetString-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass SetString-request (<SetString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name orbbec_camera-srv:<SetString-request> is deprecated: use orbbec_camera-srv:SetString-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader orbbec_camera-srv:data-val is deprecated.  Use orbbec_camera-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetString-request>) ostream)
  "Serializes a message object of type '<SetString-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetString-request>) istream)
  "Deserializes a message object of type '<SetString-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetString-request>)))
  "Returns string type for a service object of type '<SetString-request>"
  "orbbec_camera/SetStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetString-request)))
  "Returns string type for a service object of type 'SetString-request"
  "orbbec_camera/SetStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetString-request>)))
  "Returns md5sum for a message object of type '<SetString-request>"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetString-request)))
  "Returns md5sum for a message object of type 'SetString-request"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetString-request>)))
  "Returns full string definition for message of type '<SetString-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetString-request)))
  "Returns full string definition for message of type 'SetString-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetString-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetString-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetString-response.msg.html

(cl:defclass <SetString-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetString-response (<SetString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name orbbec_camera-srv:<SetString-response> is deprecated: use orbbec_camera-srv:SetString-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader orbbec_camera-srv:success-val is deprecated.  Use orbbec_camera-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader orbbec_camera-srv:message-val is deprecated.  Use orbbec_camera-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetString-response>) ostream)
  "Serializes a message object of type '<SetString-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetString-response>) istream)
  "Deserializes a message object of type '<SetString-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetString-response>)))
  "Returns string type for a service object of type '<SetString-response>"
  "orbbec_camera/SetStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetString-response)))
  "Returns string type for a service object of type 'SetString-response"
  "orbbec_camera/SetStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetString-response>)))
  "Returns md5sum for a message object of type '<SetString-response>"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetString-response)))
  "Returns md5sum for a message object of type 'SetString-response"
  "546971982e3fbbd5a41e60fb6432e357")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetString-response>)))
  "Returns full string definition for message of type '<SetString-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetString-response)))
  "Returns full string definition for message of type 'SetString-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetString-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetString-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetString)))
  'SetString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetString)))
  'SetString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetString)))
  "Returns string type for a service object of type '<SetString>"
  "orbbec_camera/SetString")