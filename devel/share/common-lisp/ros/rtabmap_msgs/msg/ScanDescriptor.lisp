; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-msg)


;//! \htmlinclude ScanDescriptor.msg.html

(cl:defclass <ScanDescriptor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scan
    :reader scan
    :initarg :scan
    :type sensor_msgs-msg:LaserScan
    :initform (cl:make-instance 'sensor_msgs-msg:LaserScan))
   (scan_cloud
    :reader scan_cloud
    :initarg :scan_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (global_descriptor
    :reader global_descriptor
    :initarg :global_descriptor
    :type rtabmap_msgs-msg:GlobalDescriptor
    :initform (cl:make-instance 'rtabmap_msgs-msg:GlobalDescriptor)))
)

(cl:defclass ScanDescriptor (<ScanDescriptor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanDescriptor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanDescriptor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-msg:<ScanDescriptor> is deprecated: use rtabmap_msgs-msg:ScanDescriptor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ScanDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:header-val is deprecated.  Use rtabmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scan-val :lambda-list '(m))
(cl:defmethod scan-val ((m <ScanDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:scan-val is deprecated.  Use rtabmap_msgs-msg:scan instead.")
  (scan m))

(cl:ensure-generic-function 'scan_cloud-val :lambda-list '(m))
(cl:defmethod scan_cloud-val ((m <ScanDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:scan_cloud-val is deprecated.  Use rtabmap_msgs-msg:scan_cloud instead.")
  (scan_cloud m))

(cl:ensure-generic-function 'global_descriptor-val :lambda-list '(m))
(cl:defmethod global_descriptor-val ((m <ScanDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:global_descriptor-val is deprecated.  Use rtabmap_msgs-msg:global_descriptor instead.")
  (global_descriptor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanDescriptor>) ostream)
  "Serializes a message object of type '<ScanDescriptor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scan_cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_descriptor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanDescriptor>) istream)
  "Deserializes a message object of type '<ScanDescriptor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scan_cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_descriptor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanDescriptor>)))
  "Returns string type for a message object of type '<ScanDescriptor>"
  "rtabmap_msgs/ScanDescriptor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanDescriptor)))
  "Returns string type for a message object of type 'ScanDescriptor"
  "rtabmap_msgs/ScanDescriptor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanDescriptor>)))
  "Returns md5sum for a message object of type '<ScanDescriptor>"
  "e76f45a9fe00fd5492368db8040ccbec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanDescriptor)))
  "Returns md5sum for a message object of type 'ScanDescriptor"
  "e76f45a9fe00fd5492368db8040ccbec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanDescriptor>)))
  "Returns full string definition for message of type '<ScanDescriptor>"
  (cl:format cl:nil "~%Header header~%~%# scan or scan_cloud is set~%sensor_msgs/LaserScan scan~%sensor_msgs/PointCloud2 scan_cloud~%~%GlobalDescriptor global_descriptor~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanDescriptor)))
  "Returns full string definition for message of type 'ScanDescriptor"
  (cl:format cl:nil "~%Header header~%~%# scan or scan_cloud is set~%sensor_msgs/LaserScan scan~%sensor_msgs/PointCloud2 scan_cloud~%~%GlobalDescriptor global_descriptor~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/LaserScan~%# Single scan from a planar laser range-finder~%#~%# If you have another ranging device with different behavior (e.g. a sonar~%# array), please find or create a different message, since applications~%# will make fairly laser-specific assumptions about this data~%~%Header header            # timestamp in the header is the acquisition time of ~%                         # the first ray in the scan.~%                         #~%                         # in frame frame_id, angles are measured around ~%                         # the positive Z axis (counterclockwise, if Z is up)~%                         # with zero angle being forward along the x axis~%                         ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%~%float32 time_increment   # time between measurements [seconds] - if your scanner~%                         # is moving, this will be used in interpolating position~%                         # of 3d points~%float32 scan_time        # time between scans [seconds]~%~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)~%float32[] intensities    # intensity data [device-specific units].  If your~%                         # device does not provide intensities, please leave~%                         # the array empty.~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanDescriptor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scan_cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_descriptor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanDescriptor>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanDescriptor
    (cl:cons ':header (header msg))
    (cl:cons ':scan (scan msg))
    (cl:cons ':scan_cloud (scan_cloud msg))
    (cl:cons ':global_descriptor (global_descriptor msg))
))
