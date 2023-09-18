; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-srv)


;//! \htmlinclude CleanupLocalGrids-request.msg.html

(cl:defclass <CleanupLocalGrids-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:integer
    :initform 0)
   (filter_scans
    :reader filter_scans
    :initarg :filter_scans
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CleanupLocalGrids-request (<CleanupLocalGrids-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CleanupLocalGrids-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CleanupLocalGrids-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<CleanupLocalGrids-request> is deprecated: use rtabmap_msgs-srv:CleanupLocalGrids-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <CleanupLocalGrids-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:radius-val is deprecated.  Use rtabmap_msgs-srv:radius instead.")
  (radius m))

(cl:ensure-generic-function 'filter_scans-val :lambda-list '(m))
(cl:defmethod filter_scans-val ((m <CleanupLocalGrids-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:filter_scans-val is deprecated.  Use rtabmap_msgs-srv:filter_scans instead.")
  (filter_scans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CleanupLocalGrids-request>) ostream)
  "Serializes a message object of type '<CleanupLocalGrids-request>"
  (cl:let* ((signed (cl:slot-value msg 'radius)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'filter_scans) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CleanupLocalGrids-request>) istream)
  "Deserializes a message object of type '<CleanupLocalGrids-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'radius) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'filter_scans) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CleanupLocalGrids-request>)))
  "Returns string type for a service object of type '<CleanupLocalGrids-request>"
  "rtabmap_msgs/CleanupLocalGridsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CleanupLocalGrids-request)))
  "Returns string type for a service object of type 'CleanupLocalGrids-request"
  "rtabmap_msgs/CleanupLocalGridsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CleanupLocalGrids-request>)))
  "Returns md5sum for a message object of type '<CleanupLocalGrids-request>"
  "9b90cbbb6fac56a143df9416b6e1fa37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CleanupLocalGrids-request)))
  "Returns md5sum for a message object of type 'CleanupLocalGrids-request"
  "9b90cbbb6fac56a143df9416b6e1fa37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CleanupLocalGrids-request>)))
  "Returns full string definition for message of type '<CleanupLocalGrids-request>"
  (cl:format cl:nil "#  Cleanup local grids service~%# ~%#     Clear empty space from local occupancy grids ~%#     (and laser scans) based on the current optimized global 2d grid map.~%#     If the map needs to be regenerated in the future (e.g., when~%#     we re-use the map in SLAM mode), removed obstacles won't reappear.~%#     Use this with care and only when you know that the map doesn't have errors, ~%#     otherwise some real obstacles/walls may be cleared if there is too much ~%#     drift in the map.~%#~%~%# Radius in cells around empty cell without obstacles to clear underlying obstacles, default 1 cell if not set.~%int32 radius~%~%# Filter also the scans, default false if not set.~%# The filtered laser scans will be used for localization,~%# so if dynamic obstacles have been removed, localization won't try to~%# match them anymore. Filtering the laser scans cannot be reverted, ~%# but grids can (see DatabaseViewer->Edit menu).~%bool filter_scans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CleanupLocalGrids-request)))
  "Returns full string definition for message of type 'CleanupLocalGrids-request"
  (cl:format cl:nil "#  Cleanup local grids service~%# ~%#     Clear empty space from local occupancy grids ~%#     (and laser scans) based on the current optimized global 2d grid map.~%#     If the map needs to be regenerated in the future (e.g., when~%#     we re-use the map in SLAM mode), removed obstacles won't reappear.~%#     Use this with care and only when you know that the map doesn't have errors, ~%#     otherwise some real obstacles/walls may be cleared if there is too much ~%#     drift in the map.~%#~%~%# Radius in cells around empty cell without obstacles to clear underlying obstacles, default 1 cell if not set.~%int32 radius~%~%# Filter also the scans, default false if not set.~%# The filtered laser scans will be used for localization,~%# so if dynamic obstacles have been removed, localization won't try to~%# match them anymore. Filtering the laser scans cannot be reverted, ~%# but grids can (see DatabaseViewer->Edit menu).~%bool filter_scans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CleanupLocalGrids-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CleanupLocalGrids-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CleanupLocalGrids-request
    (cl:cons ':radius (radius msg))
    (cl:cons ':filter_scans (filter_scans msg))
))
;//! \htmlinclude CleanupLocalGrids-response.msg.html

(cl:defclass <CleanupLocalGrids-response> (roslisp-msg-protocol:ros-message)
  ((modified
    :reader modified
    :initarg :modified
    :type cl:integer
    :initform 0))
)

(cl:defclass CleanupLocalGrids-response (<CleanupLocalGrids-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CleanupLocalGrids-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CleanupLocalGrids-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-srv:<CleanupLocalGrids-response> is deprecated: use rtabmap_msgs-srv:CleanupLocalGrids-response instead.")))

(cl:ensure-generic-function 'modified-val :lambda-list '(m))
(cl:defmethod modified-val ((m <CleanupLocalGrids-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-srv:modified-val is deprecated.  Use rtabmap_msgs-srv:modified instead.")
  (modified m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CleanupLocalGrids-response>) ostream)
  "Serializes a message object of type '<CleanupLocalGrids-response>"
  (cl:let* ((signed (cl:slot-value msg 'modified)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CleanupLocalGrids-response>) istream)
  "Deserializes a message object of type '<CleanupLocalGrids-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modified) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CleanupLocalGrids-response>)))
  "Returns string type for a service object of type '<CleanupLocalGrids-response>"
  "rtabmap_msgs/CleanupLocalGridsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CleanupLocalGrids-response)))
  "Returns string type for a service object of type 'CleanupLocalGrids-response"
  "rtabmap_msgs/CleanupLocalGridsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CleanupLocalGrids-response>)))
  "Returns md5sum for a message object of type '<CleanupLocalGrids-response>"
  "9b90cbbb6fac56a143df9416b6e1fa37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CleanupLocalGrids-response)))
  "Returns md5sum for a message object of type 'CleanupLocalGrids-response"
  "9b90cbbb6fac56a143df9416b6e1fa37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CleanupLocalGrids-response>)))
  "Returns full string definition for message of type '<CleanupLocalGrids-response>"
  (cl:format cl:nil "# return the number of grids or scans modified, -1 if there is an error~%int32 modified~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CleanupLocalGrids-response)))
  "Returns full string definition for message of type 'CleanupLocalGrids-response"
  (cl:format cl:nil "# return the number of grids or scans modified, -1 if there is an error~%int32 modified~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CleanupLocalGrids-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CleanupLocalGrids-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CleanupLocalGrids-response
    (cl:cons ':modified (modified msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CleanupLocalGrids)))
  'CleanupLocalGrids-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CleanupLocalGrids)))
  'CleanupLocalGrids-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CleanupLocalGrids)))
  "Returns string type for a service object of type '<CleanupLocalGrids>"
  "rtabmap_msgs/CleanupLocalGrids")