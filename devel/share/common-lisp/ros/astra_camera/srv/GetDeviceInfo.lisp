; Auto-generated. Do not edit!


(cl:in-package astra_camera-srv)


;//! \htmlinclude GetDeviceInfo-request.msg.html

(cl:defclass <GetDeviceInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDeviceInfo-request (<GetDeviceInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetDeviceInfo-request> is deprecated: use astra_camera-srv:GetDeviceInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceInfo-request>) ostream)
  "Serializes a message object of type '<GetDeviceInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceInfo-request>) istream)
  "Deserializes a message object of type '<GetDeviceInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceInfo-request>)))
  "Returns string type for a service object of type '<GetDeviceInfo-request>"
  "astra_camera/GetDeviceInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceInfo-request)))
  "Returns string type for a service object of type 'GetDeviceInfo-request"
  "astra_camera/GetDeviceInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceInfo-request>)))
  "Returns md5sum for a message object of type '<GetDeviceInfo-request>"
  "1e369ba84c0330473501a0820257661a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceInfo-request)))
  "Returns md5sum for a message object of type 'GetDeviceInfo-request"
  "1e369ba84c0330473501a0820257661a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceInfo-request>)))
  "Returns full string definition for message of type '<GetDeviceInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceInfo-request)))
  "Returns full string definition for message of type 'GetDeviceInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceInfo-request
))
;//! \htmlinclude GetDeviceInfo-response.msg.html

(cl:defclass <GetDeviceInfo-response> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type astra_camera-msg:DeviceInfo
    :initform (cl:make-instance 'astra_camera-msg:DeviceInfo))
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

(cl:defclass GetDeviceInfo-response (<GetDeviceInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeviceInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeviceInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-srv:<GetDeviceInfo-response> is deprecated: use astra_camera-srv:GetDeviceInfo-response instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <GetDeviceInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:info-val is deprecated.  Use astra_camera-srv:info instead.")
  (info m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetDeviceInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:success-val is deprecated.  Use astra_camera-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetDeviceInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-srv:message-val is deprecated.  Use astra_camera-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeviceInfo-response>) ostream)
  "Serializes a message object of type '<GetDeviceInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeviceInfo-response>) istream)
  "Deserializes a message object of type '<GetDeviceInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeviceInfo-response>)))
  "Returns string type for a service object of type '<GetDeviceInfo-response>"
  "astra_camera/GetDeviceInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceInfo-response)))
  "Returns string type for a service object of type 'GetDeviceInfo-response"
  "astra_camera/GetDeviceInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeviceInfo-response>)))
  "Returns md5sum for a message object of type '<GetDeviceInfo-response>"
  "1e369ba84c0330473501a0820257661a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeviceInfo-response)))
  "Returns md5sum for a message object of type 'GetDeviceInfo-response"
  "1e369ba84c0330473501a0820257661a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeviceInfo-response>)))
  "Returns full string definition for message of type '<GetDeviceInfo-response>"
  (cl:format cl:nil "DeviceInfo info~%bool success~%string message~%~%~%================================================================================~%MSG: astra_camera/DeviceInfo~%std_msgs/Header header~%string name~%int32 vid~%int32 pid~%string serial_number~%string firmware_version~%string supported_min_sdk_version~%string hardware_version~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeviceInfo-response)))
  "Returns full string definition for message of type 'GetDeviceInfo-response"
  (cl:format cl:nil "DeviceInfo info~%bool success~%string message~%~%~%================================================================================~%MSG: astra_camera/DeviceInfo~%std_msgs/Header header~%string name~%int32 vid~%int32 pid~%string serial_number~%string firmware_version~%string supported_min_sdk_version~%string hardware_version~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeviceInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeviceInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeviceInfo-response
    (cl:cons ':info (info msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeviceInfo)))
  'GetDeviceInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeviceInfo)))
  'GetDeviceInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeviceInfo)))
  "Returns string type for a service object of type '<GetDeviceInfo>"
  "astra_camera/GetDeviceInfo")