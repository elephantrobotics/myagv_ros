; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude LoadDatabase-request.msg.html

(cl:defclass <LoadDatabase-request> (roslisp-msg-protocol:ros-message)
  ((database_path
    :reader database_path
    :initarg :database_path
    :type cl:string
    :initform "")
   (clear
    :reader clear
    :initarg :clear
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadDatabase-request (<LoadDatabase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadDatabase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadDatabase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<LoadDatabase-request> is deprecated: use rtabmap_msgs-srv:LoadDatabase-request instead.")))

(cl:ensure-generic-function 'database_path-val :lambda-list '(m))
(cl:defmethod database_path-val ((m <LoadDatabase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:database_path-val is deprecated.  Use rtabmap_msgs-srv:database_path instead.")
  (database_path m))

(cl:ensure-generic-function 'clear-val :lambda-list '(m))
(cl:defmethod clear-val ((m <LoadDatabase-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:clear-val is deprecated.  Use rtabmap_msgs-srv:clear instead.")
  (clear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadDatabase-request>) ostream)
  "Serializes a message object of type '<LoadDatabase-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'database_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'database_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadDatabase-request>) istream)
  "Deserializes a message object of type '<LoadDatabase-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'database_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'database_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'clear) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadDatabase-request>)))
  "Returns string type for a service object of type '<LoadDatabase-request>"
  "rtabmap_msgs/LoadDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadDatabase-request)))
  "Returns string type for a service object of type 'LoadDatabase-request"
  "rtabmap_msgs/LoadDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadDatabase-request>)))
  "Returns md5sum for a message object of type '<LoadDatabase-request>"
  "686abf12c0ee22118c7e5fcc29bcdabe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadDatabase-request)))
  "Returns md5sum for a message object of type 'LoadDatabase-request"
  "686abf12c0ee22118c7e5fcc29bcdabe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadDatabase-request>)))
  "Returns full string definition for message of type '<LoadDatabase-request>"
  (cl:format cl:nil "#request~%~%# Local database path on which rtabmap is running.~%# If the path doesn't exist, a new database will be created.~%string database_path~%~%# If the database already exists, data will be cleared if true.~%bool clear~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadDatabase-request)))
  "Returns full string definition for message of type 'LoadDatabase-request"
  (cl:format cl:nil "#request~%~%# Local database path on which rtabmap is running.~%# If the path doesn't exist, a new database will be created.~%string database_path~%~%# If the database already exists, data will be cleared if true.~%bool clear~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadDatabase-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'database_path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadDatabase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadDatabase-request
    (cl:cons ':database_path (database_path msg))
    (cl:cons ':clear (clear msg))
))
;//! \htmlinclude LoadDatabase-response.msg.html

(cl:defclass <LoadDatabase-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadDatabase-response (<LoadDatabase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadDatabase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadDatabase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<LoadDatabase-response> is deprecated: use rtabmap_msgs-srv:LoadDatabase-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadDatabase-response>) ostream)
  "Serializes a message object of type '<LoadDatabase-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadDatabase-response>) istream)
  "Deserializes a message object of type '<LoadDatabase-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadDatabase-response>)))
  "Returns string type for a service object of type '<LoadDatabase-response>"
  "rtabmap_msgs/LoadDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadDatabase-response)))
  "Returns string type for a service object of type 'LoadDatabase-response"
  "rtabmap_msgs/LoadDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadDatabase-response>)))
  "Returns md5sum for a message object of type '<LoadDatabase-response>"
  "686abf12c0ee22118c7e5fcc29bcdabe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadDatabase-response)))
  "Returns md5sum for a message object of type 'LoadDatabase-response"
  "686abf12c0ee22118c7e5fcc29bcdabe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadDatabase-response>)))
  "Returns full string definition for message of type '<LoadDatabase-response>"
  (cl:format cl:nil "#response, return false on rtabmap initialization failure.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadDatabase-response)))
  "Returns full string definition for message of type 'LoadDatabase-response"
  (cl:format cl:nil "#response, return false on rtabmap initialization failure.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadDatabase-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadDatabase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadDatabase-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadDatabase)))
  'LoadDatabase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadDatabase)))
  'LoadDatabase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadDatabase)))
  "Returns string type for a service object of type '<LoadDatabase>"
  "rtabmap_msgs/LoadDatabase")