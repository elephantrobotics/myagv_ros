; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude DetectMoreLoopClosures-request.msg.html

(cl:defclass <DetectMoreLoopClosures-request> (roslisp-msg-protocol:ros-message)
  ((cluster_radius_max
    :reader cluster_radius_max
    :initarg :cluster_radius_max
    :type cl:float
    :initform 0.0)
   (cluster_radius_min
    :reader cluster_radius_min
    :initarg :cluster_radius_min
    :type cl:float
    :initform 0.0)
   (cluster_angle
    :reader cluster_angle
    :initarg :cluster_angle
    :type cl:float
    :initform 0.0)
   (iterations
    :reader iterations
    :initarg :iterations
    :type cl:integer
    :initform 0)
   (intra_only
    :reader intra_only
    :initarg :intra_only
    :type cl:boolean
    :initform cl:nil)
   (inter_only
    :reader inter_only
    :initarg :inter_only
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DetectMoreLoopClosures-request (<DetectMoreLoopClosures-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectMoreLoopClosures-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectMoreLoopClosures-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<DetectMoreLoopClosures-request> is deprecated: use rtabmap_msgs-srv:DetectMoreLoopClosures-request instead.")))

(cl:ensure-generic-function 'cluster_radius_max-val :lambda-list '(m))
(cl:defmethod cluster_radius_max-val ((m <DetectMoreLoopClosures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:cluster_radius_max-val is deprecated.  Use rtabmap_msgs-srv:cluster_radius_max instead.")
  (cluster_radius_max m))

(cl:ensure-generic-function 'cluster_radius_min-val :lambda-list '(m))
(cl:defmethod cluster_radius_min-val ((m <DetectMoreLoopClosures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:cluster_radius_min-val is deprecated.  Use rtabmap_msgs-srv:cluster_radius_min instead.")
  (cluster_radius_min m))

(cl:ensure-generic-function 'cluster_angle-val :lambda-list '(m))
(cl:defmethod cluster_angle-val ((m <DetectMoreLoopClosures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:cluster_angle-val is deprecated.  Use rtabmap_msgs-srv:cluster_angle instead.")
  (cluster_angle m))

(cl:ensure-generic-function 'iterations-val :lambda-list '(m))
(cl:defmethod iterations-val ((m <DetectMoreLoopClosures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:iterations-val is deprecated.  Use rtabmap_msgs-srv:iterations instead.")
  (iterations m))

(cl:ensure-generic-function 'intra_only-val :lambda-list '(m))
(cl:defmethod intra_only-val ((m <DetectMoreLoopClosures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:intra_only-val is deprecated.  Use rtabmap_msgs-srv:intra_only instead.")
  (intra_only m))

(cl:ensure-generic-function 'inter_only-val :lambda-list '(m))
(cl:defmethod inter_only-val ((m <DetectMoreLoopClosures-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:inter_only-val is deprecated.  Use rtabmap_msgs-srv:inter_only instead.")
  (inter_only m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectMoreLoopClosures-request>) ostream)
  "Serializes a message object of type '<DetectMoreLoopClosures-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cluster_radius_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cluster_radius_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cluster_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'iterations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'intra_only) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inter_only) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectMoreLoopClosures-request>) istream)
  "Deserializes a message object of type '<DetectMoreLoopClosures-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cluster_radius_max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cluster_radius_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cluster_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'iterations) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'intra_only) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'inter_only) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectMoreLoopClosures-request>)))
  "Returns string type for a service object of type '<DetectMoreLoopClosures-request>"
  "rtabmap_msgs/DetectMoreLoopClosuresRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectMoreLoopClosures-request)))
  "Returns string type for a service object of type 'DetectMoreLoopClosures-request"
  "rtabmap_msgs/DetectMoreLoopClosuresRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectMoreLoopClosures-request>)))
  "Returns md5sum for a message object of type '<DetectMoreLoopClosures-request>"
  "4d201f0476beb2d12b70b64edae8edab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectMoreLoopClosures-request)))
  "Returns md5sum for a message object of type 'DetectMoreLoopClosures-request"
  "4d201f0476beb2d12b70b64edae8edab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectMoreLoopClosures-request>)))
  "Returns full string definition for message of type '<DetectMoreLoopClosures-request>"
  (cl:format cl:nil "# Detect more loop closures service~%#~%#     Based on the current optimized graph, ~%#     this process will try to find more nodes corresponding with each ~%#     other, and thus finding more loop closures to add to graph.~%# ~%~%# Cluster radius (m),     default 1 m if not set~%float32 cluster_radius_max~%~%# Cluster radius min (m), default 0 m if not set~%float32 cluster_radius_min~%~%# Cluster angle (deg),    default 0 deg if not set~%float32 cluster_angle~%~%# Iterations,             default 1 if not set~%int32 iterations~%~%# Add only intra session loop closures~%bool intra_only~%~%# Add only inter session loop closures~%bool inter_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectMoreLoopClosures-request)))
  "Returns full string definition for message of type 'DetectMoreLoopClosures-request"
  (cl:format cl:nil "# Detect more loop closures service~%#~%#     Based on the current optimized graph, ~%#     this process will try to find more nodes corresponding with each ~%#     other, and thus finding more loop closures to add to graph.~%# ~%~%# Cluster radius (m),     default 1 m if not set~%float32 cluster_radius_max~%~%# Cluster radius min (m), default 0 m if not set~%float32 cluster_radius_min~%~%# Cluster angle (deg),    default 0 deg if not set~%float32 cluster_angle~%~%# Iterations,             default 1 if not set~%int32 iterations~%~%# Add only intra session loop closures~%bool intra_only~%~%# Add only inter session loop closures~%bool inter_only~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectMoreLoopClosures-request>))
  (cl:+ 0
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectMoreLoopClosures-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectMoreLoopClosures-request
    (cl:cons ':cluster_radius_max (cluster_radius_max msg))
    (cl:cons ':cluster_radius_min (cluster_radius_min msg))
    (cl:cons ':cluster_angle (cluster_angle msg))
    (cl:cons ':iterations (iterations msg))
    (cl:cons ':intra_only (intra_only msg))
    (cl:cons ':inter_only (inter_only msg))
))
;//! \htmlinclude DetectMoreLoopClosures-response.msg.html

(cl:defclass <DetectMoreLoopClosures-response> (roslisp-msg-protocol:ros-message)
  ((detected
    :reader detected
    :initarg :detected
    :type cl:integer
    :initform 0))
)

(cl:defclass DetectMoreLoopClosures-response (<DetectMoreLoopClosures-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectMoreLoopClosures-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectMoreLoopClosures-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<DetectMoreLoopClosures-response> is deprecated: use rtabmap_msgs-srv:DetectMoreLoopClosures-response instead.")))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <DetectMoreLoopClosures-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:detected-val is deprecated.  Use rtabmap_msgs-srv:detected instead.")
  (detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectMoreLoopClosures-response>) ostream)
  "Serializes a message object of type '<DetectMoreLoopClosures-response>"
  (cl:let* ((signed (cl:slot-value msg 'detected)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectMoreLoopClosures-response>) istream)
  "Deserializes a message object of type '<DetectMoreLoopClosures-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detected) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectMoreLoopClosures-response>)))
  "Returns string type for a service object of type '<DetectMoreLoopClosures-response>"
  "rtabmap_msgs/DetectMoreLoopClosuresResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectMoreLoopClosures-response)))
  "Returns string type for a service object of type 'DetectMoreLoopClosures-response"
  "rtabmap_msgs/DetectMoreLoopClosuresResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectMoreLoopClosures-response>)))
  "Returns md5sum for a message object of type '<DetectMoreLoopClosures-response>"
  "4d201f0476beb2d12b70b64edae8edab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectMoreLoopClosures-response)))
  "Returns md5sum for a message object of type 'DetectMoreLoopClosures-response"
  "4d201f0476beb2d12b70b64edae8edab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectMoreLoopClosures-response>)))
  "Returns full string definition for message of type '<DetectMoreLoopClosures-response>"
  (cl:format cl:nil "# return the number of loop closures detected, or -1 if it failed.~%int32 detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectMoreLoopClosures-response)))
  "Returns full string definition for message of type 'DetectMoreLoopClosures-response"
  (cl:format cl:nil "# return the number of loop closures detected, or -1 if it failed.~%int32 detected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectMoreLoopClosures-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectMoreLoopClosures-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectMoreLoopClosures-response
    (cl:cons ':detected (detected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectMoreLoopClosures)))
  'DetectMoreLoopClosures-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectMoreLoopClosures)))
  'DetectMoreLoopClosures-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectMoreLoopClosures)))
  "Returns string type for a service object of type '<DetectMoreLoopClosures>"
  "rtabmap_msgs/DetectMoreLoopClosures")