; Auto-generated. Do not edit!


(cl:in-package astra_camera-msg)


;//! \htmlinclude DeviceInfo.msg.html

(cl:defclass <DeviceInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (vid
    :reader vid
    :initarg :vid
    :type cl:integer
    :initform 0)
   (pid
    :reader pid
    :initarg :pid
    :type cl:integer
    :initform 0)
   (serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:string
    :initform "")
   (firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:string
    :initform "")
   (supported_min_sdk_version
    :reader supported_min_sdk_version
    :initarg :supported_min_sdk_version
    :type cl:string
    :initform "")
   (hardware_version
    :reader hardware_version
    :initarg :hardware_version
    :type cl:string
    :initform ""))
)

(cl:defclass DeviceInfo (<DeviceInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeviceInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeviceInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astra_camera-msg:<DeviceInfo> is deprecated: use astra_camera-msg:DeviceInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:header-val is deprecated.  Use astra_camera-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:name-val is deprecated.  Use astra_camera-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'vid-val :lambda-list '(m))
(cl:defmethod vid-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:vid-val is deprecated.  Use astra_camera-msg:vid instead.")
  (vid m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:pid-val is deprecated.  Use astra_camera-msg:pid instead.")
  (pid m))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:serial_number-val is deprecated.  Use astra_camera-msg:serial_number instead.")
  (serial_number m))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:firmware_version-val is deprecated.  Use astra_camera-msg:firmware_version instead.")
  (firmware_version m))

(cl:ensure-generic-function 'supported_min_sdk_version-val :lambda-list '(m))
(cl:defmethod supported_min_sdk_version-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:supported_min_sdk_version-val is deprecated.  Use astra_camera-msg:supported_min_sdk_version instead.")
  (supported_min_sdk_version m))

(cl:ensure-generic-function 'hardware_version-val :lambda-list '(m))
(cl:defmethod hardware_version-val ((m <DeviceInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astra_camera-msg:hardware_version-val is deprecated.  Use astra_camera-msg:hardware_version instead.")
  (hardware_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeviceInfo>) ostream)
  "Serializes a message object of type '<DeviceInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'vid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'supported_min_sdk_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'supported_min_sdk_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeviceInfo>) istream)
  "Deserializes a message object of type '<DeviceInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'supported_min_sdk_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'supported_min_sdk_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeviceInfo>)))
  "Returns string type for a message object of type '<DeviceInfo>"
  "astra_camera/DeviceInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeviceInfo)))
  "Returns string type for a message object of type 'DeviceInfo"
  "astra_camera/DeviceInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeviceInfo>)))
  "Returns md5sum for a message object of type '<DeviceInfo>"
  "f8aabac6d632dd2641eb4f5942464a66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeviceInfo)))
  "Returns md5sum for a message object of type 'DeviceInfo"
  "f8aabac6d632dd2641eb4f5942464a66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeviceInfo>)))
  "Returns full string definition for message of type '<DeviceInfo>"
  (cl:format cl:nil "std_msgs/Header header~%string name~%int32 vid~%int32 pid~%string serial_number~%string firmware_version~%string supported_min_sdk_version~%string hardware_version~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeviceInfo)))
  "Returns full string definition for message of type 'DeviceInfo"
  (cl:format cl:nil "std_msgs/Header header~%string name~%int32 vid~%int32 pid~%string serial_number~%string firmware_version~%string supported_min_sdk_version~%string hardware_version~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeviceInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4 (cl:length (cl:slot-value msg 'serial_number))
     4 (cl:length (cl:slot-value msg 'firmware_version))
     4 (cl:length (cl:slot-value msg 'supported_min_sdk_version))
     4 (cl:length (cl:slot-value msg 'hardware_version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeviceInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DeviceInfo
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':vid (vid msg))
    (cl:cons ':pid (pid msg))
    (cl:cons ':serial_number (serial_number msg))
    (cl:cons ':firmware_version (firmware_version msg))
    (cl:cons ':supported_min_sdk_version (supported_min_sdk_version msg))
    (cl:cons ':hardware_version (hardware_version msg))
))
