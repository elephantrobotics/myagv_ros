; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-msg)


;//! \htmlinclude MapData.msg.html

(cl:defclass <MapData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (graph
    :reader graph
    :initarg :graph
    :type rtabmap_msgs-msg:MapGraph
    :initform (cl:make-instance 'rtabmap_msgs-msg:MapGraph))
   (nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector rtabmap_msgs-msg:NodeData)
   :initform (cl:make-array 0 :element-type 'rtabmap_msgs-msg:NodeData :initial-element (cl:make-instance 'rtabmap_msgs-msg:NodeData))))
)

(cl:defclass MapData (<MapData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-msg:<MapData> is deprecated: use rtabmap_msgs-msg:MapData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:header-val is deprecated.  Use rtabmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'graph-val :lambda-list '(m))
(cl:defmethod graph-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:graph-val is deprecated.  Use rtabmap_msgs-msg:graph instead.")
  (graph m))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <MapData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:nodes-val is deprecated.  Use rtabmap_msgs-msg:nodes instead.")
  (nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapData>) ostream)
  "Serializes a message object of type '<MapData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'graph) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapData>) istream)
  "Deserializes a message object of type '<MapData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'graph) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtabmap_msgs-msg:NodeData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapData>)))
  "Returns string type for a message object of type '<MapData>"
  "rtabmap_msgs/MapData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapData)))
  "Returns string type for a message object of type 'MapData"
  "rtabmap_msgs/MapData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapData>)))
  "Returns md5sum for a message object of type '<MapData>"
  "e20572a812f1f74060a7f5d1a39f9106")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapData)))
  "Returns md5sum for a message object of type 'MapData"
  "e20572a812f1f74060a7f5d1a39f9106")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapData>)))
  "Returns full string definition for message of type '<MapData>"
  (cl:format cl:nil "~%Header header~%~%##################~%# Optimized graph~%##################~%MapGraph graph~%~%##################~%# Graph data~%##################~%NodeData[] nodes~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/MapGraph~%~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: rtabmap_msgs/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# GPS (optional)~%GPS gps~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32[] baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D or 3D laser scan~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%int32 laserScanFormat~%# local transform (/base_link -> /base_laser)~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%uint8[] grid_empty_cells~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, index>~%# std::vector<cv::Keypoint>~%# std::vector<cv::Point3f>~%int32[] wordIdKeys~%int32[] wordIdValues~%KeyPoint[] wordKpts~%Point3f[] wordPts~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] wordDescriptors~%~%GlobalDescriptor[] globalDescriptors~%~%EnvSensor[] env_sensors~%~%================================================================================~%MSG: rtabmap_msgs/GPS~%~%float64 stamp      # in seconds~%float64 longitude  # DD format~%float64 latitude   # DD format~%float64 altitude   # in meters~%float64 error      # in meters~%float64 bearing    # North 0->360 deg~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%================================================================================~%MSG: rtabmap_msgs/EnvSensor~%~%Header header~%~%# EnvSensor~%int32 type~%float64 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapData)))
  "Returns full string definition for message of type 'MapData"
  (cl:format cl:nil "~%Header header~%~%##################~%# Optimized graph~%##################~%MapGraph graph~%~%##################~%# Graph data~%##################~%NodeData[] nodes~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rtabmap_msgs/MapGraph~%~%Header header~%~%##~%# /map to /odom transform~%# Always identity when the graph is optimized from the latest pose.~%##~%geometry_msgs/Transform mapToOdom~%~%# The poses~%int32[] posesId~%geometry_msgs/Pose[] poses~%~%# The links~%Link[] links~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: rtabmap_msgs/Link~%#class rtabmap::Link~%#{~%#   int from;~%#   int to;~%#   Type type;~%#   Transform transform;~%#   cv::Mat(6,6,CV_64FC1) information;~%#}~%~%int32 fromId~%int32 toId~%int32 type~%geometry_msgs/Transform transform~%float64[36] information~%================================================================================~%MSG: rtabmap_msgs/NodeData~%~%int32 id~%int32 mapId~%int32 weight~%float64 stamp~%string label~%~%# Pose from odometry not corrected~%geometry_msgs/Pose pose~%~%# Ground truth (optional)~%geometry_msgs/Pose groundTruthPose~%~%# GPS (optional)~%GPS gps~%~%# compressed image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] image~%~%# compressed depth image in /camera_link frame~%# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"~%uint8[] depth~%~%# Camera models~%float32[] fx~%float32[] fy~%float32[] cx~%float32[] cy~%float32[] width~%float32[] height~%float32[] baseline~%# local transform (/base_link -> /camera_link)~%geometry_msgs/Transform[] localTransform~%~%# compressed 2D or 3D laser scan~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] laserScan~%int32 laserScanMaxPts~%float32 laserScanMaxRange~%int32 laserScanFormat~%# local transform (/base_link -> /base_laser)~%geometry_msgs/Transform laserScanLocalTransform~%~%# compressed user data~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] userData~%~%# compressed occupancy grid~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] grid_ground~%uint8[] grid_obstacles~%uint8[] grid_empty_cells~%float32 grid_cell_size~%Point3f grid_view_point~%~%# std::multimap<wordId, index>~%# std::vector<cv::Keypoint>~%# std::vector<cv::Point3f>~%int32[] wordIdKeys~%int32[] wordIdValues~%KeyPoint[] wordKpts~%Point3f[] wordPts~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] wordDescriptors~%~%GlobalDescriptor[] globalDescriptors~%~%EnvSensor[] env_sensors~%~%================================================================================~%MSG: rtabmap_msgs/GPS~%~%float64 stamp      # in seconds~%float64 longitude  # DD format~%float64 latitude   # DD format~%float64 altitude   # in meters~%float64 error      # in meters~%float64 bearing    # North 0->360 deg~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%================================================================================~%MSG: rtabmap_msgs/EnvSensor~%~%Header header~%~%# EnvSensor~%int32 type~%float64 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'graph))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapData>))
  "Converts a ROS message object to a list"
  (cl:list 'MapData
    (cl:cons ':header (header msg))
    (cl:cons ':graph (graph msg))
    (cl:cons ':nodes (nodes msg))
))
