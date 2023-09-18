; Auto-generated. Do not edit!


(cl:in-package orbbec_camera-srv)


;//! \htmlinclude GetString-request.msg.html

(cl:defclass <GetString-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetString-request (<GetString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name orbbec_camera-srv:<GetString-request> is deprecated: use orbbec_camera-srv:GetString-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetString-request>) ostream)
  "Serializes a message object of type '<GetString-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetString-request>) istream)
  "Deserializes a message object of type '<GetString-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetString-request>)))
  "Returns string type for a service object of type '<GetString-request>"
  "orbbec_camera/GetStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetString-request)))
  "Returns string type for a service object of type 'GetString-request"
  "orbbec_camera/GetStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetString-request>)))
  "Returns md5sum for a message object of type '<GetString-request>"
  "15baad3d82a7b70bfc4eb31d66322293")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetString-request)))
  "Returns md5sum for a message object of type 'GetString-request"
  "15baad3d82a7b70bfc4eb31d66322293")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetString-request>)))
  "Returns full string definition for message of type '<GetString-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetString-request)))
  "Returns full string definition for message of type 'GetString-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetString-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetString-request
))
;//! \htmlinclude GetString-response.msg.html

(cl:defclass <GetString-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (success
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

(cl:defclass GetString-response (<GetString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name orbbec_camera-srv:<GetString-response> is deprecated: use orbbec_camera-srv:GetString-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader orbbec_camera-srv:data-val is deprecated.  Use orbbec_camera-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader orbbec_camera-srv:success-val is deprecated.  Use orbbec_camera-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader orbbec_camera-srv:message-val is deprecated.  Use orbbec_camera-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetString-response>) ostream)
  "Serializes a message object of type '<GetString-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetString-response>) istream)
  "Deserializes a message object of type '<GetString-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetString-response>)))
  "Returns string type for a service object of type '<GetString-response>"
  "orbbec_camera/GetStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetString-response)))
  "Returns string type for a service object of type 'GetString-response"
  "orbbec_camera/GetStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetString-response>)))
  "Returns md5sum for a message object of type '<GetString-response>"
  "15baad3d82a7b70bfc4eb31d66322293")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetString-response)))
  "Returns md5sum for a message object of type 'GetString-response"
  "15baad3d82a7b70bfc4eb31d66322293")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetString-response>)))
  "Returns full string definition for message of type '<GetString-response>"
  (cl:format cl:nil "string data~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetString-response)))
  "Returns full string definition for message of type 'GetString-response"
  (cl:format cl:nil "string data~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetString-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetString-response
    (cl:cons ':data (data msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetString)))
  'GetString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetString)))
  'GetString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetString)))
  "Returns string type for a service object of type '<GetString>"
  "orbbec_camera/GetString")