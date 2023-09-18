; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude PublishMap-request.msg.html

(cl:defclass <PublishMap-request> (roslisp-msg-protocol:ros-message)
  ((global
    :reader global
    :initarg :global
    :type cl:boolean
    :initform cl:nil)
   (optimized
    :reader optimized
    :initarg :optimized
    :type cl:boolean
    :initform cl:nil)
   (graphOnly
    :reader graphOnly
    :initarg :graphOnly
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PublishMap-request (<PublishMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublishMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublishMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<PublishMap-request> is deprecated: use rtabmap_msgs-srv:PublishMap-request instead.")))

(cl:ensure-generic-function 'global-val :lambda-list '(m))
(cl:defmethod global-val ((m <PublishMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:global-val is deprecated.  Use rtabmap_msgs-srv:global instead.")
  (global m))

(cl:ensure-generic-function 'optimized-val :lambda-list '(m))
(cl:defmethod optimized-val ((m <PublishMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:optimized-val is deprecated.  Use rtabmap_msgs-srv:optimized instead.")
  (optimized m))

(cl:ensure-generic-function 'graphOnly-val :lambda-list '(m))
(cl:defmethod graphOnly-val ((m <PublishMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:graphOnly-val is deprecated.  Use rtabmap_msgs-srv:graphOnly instead.")
  (graphOnly m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublishMap-request>) ostream)
  "Serializes a message object of type '<PublishMap-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'global) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'optimized) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'graphOnly) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublishMap-request>) istream)
  "Deserializes a message object of type '<PublishMap-request>"
    (cl:setf (cl:slot-value msg 'global) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'optimized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'graphOnly) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublishMap-request>)))
  "Returns string type for a service object of type '<PublishMap-request>"
  "rtabmap_msgs/PublishMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishMap-request)))
  "Returns string type for a service object of type 'PublishMap-request"
  "rtabmap_msgs/PublishMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublishMap-request>)))
  "Returns md5sum for a message object of type '<PublishMap-request>"
  "6213f9f13cced23f4d224b22f59d839c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublishMap-request)))
  "Returns md5sum for a message object of type 'PublishMap-request"
  "6213f9f13cced23f4d224b22f59d839c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublishMap-request>)))
  "Returns full string definition for message of type '<PublishMap-request>"
  (cl:format cl:nil "#request~%bool global~%bool optimized~%bool graphOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublishMap-request)))
  "Returns full string definition for message of type 'PublishMap-request"
  (cl:format cl:nil "#request~%bool global~%bool optimized~%bool graphOnly~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublishMap-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublishMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PublishMap-request
    (cl:cons ':global (global msg))
    (cl:cons ':optimized (optimized msg))
    (cl:cons ':graphOnly (graphOnly msg))
))
;//! \htmlinclude PublishMap-response.msg.html

(cl:defclass <PublishMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PublishMap-response (<PublishMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PublishMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PublishMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<PublishMap-response> is deprecated: use rtabmap_msgs-srv:PublishMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PublishMap-response>) ostream)
  "Serializes a message object of type '<PublishMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PublishMap-response>) istream)
  "Deserializes a message object of type '<PublishMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PublishMap-response>)))
  "Returns string type for a service object of type '<PublishMap-response>"
  "rtabmap_msgs/PublishMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishMap-response)))
  "Returns string type for a service object of type 'PublishMap-response"
  "rtabmap_msgs/PublishMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PublishMap-response>)))
  "Returns md5sum for a message object of type '<PublishMap-response>"
  "6213f9f13cced23f4d224b22f59d839c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PublishMap-response)))
  "Returns md5sum for a message object of type 'PublishMap-response"
  "6213f9f13cced23f4d224b22f59d839c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PublishMap-response>)))
  "Returns full string definition for message of type '<PublishMap-response>"
  (cl:format cl:nil "#response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PublishMap-response)))
  "Returns full string definition for message of type 'PublishMap-response"
  (cl:format cl:nil "#response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PublishMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PublishMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PublishMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PublishMap)))
  'PublishMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PublishMap)))
  'PublishMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PublishMap)))
  "Returns string type for a service object of type '<PublishMap>"
  "rtabmap_msgs/PublishMap")