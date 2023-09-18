;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::ScanDescriptor)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'ScanDescriptor (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::SCANDESCRIPTOR")
  (make-package "RTABMAP_MSGS::SCANDESCRIPTOR"))

(in-package "ROS")
;;//! \htmlinclude ScanDescriptor.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::ScanDescriptor
  :super ros::object
  :slots (_header _scan _scan_cloud _global_descriptor ))

(defmethod rtabmap_msgs::ScanDescriptor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scan __scan) (instance sensor_msgs::LaserScan :init))
    ((:scan_cloud __scan_cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:global_descriptor __global_descriptor) (instance rtabmap_msgs::GlobalDescriptor :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _scan __scan)
   (setq _scan_cloud __scan_cloud)
   (setq _global_descriptor __global_descriptor)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scan
   (&rest __scan)
   (if (keywordp (car __scan))
       (send* _scan __scan)
     (progn
       (if __scan (setq _scan (car __scan)))
       _scan)))
  (:scan_cloud
   (&rest __scan_cloud)
   (if (keywordp (car __scan_cloud))
       (send* _scan_cloud __scan_cloud)
     (progn
       (if __scan_cloud (setq _scan_cloud (car __scan_cloud)))
       _scan_cloud)))
  (:global_descriptor
   (&rest __global_descriptor)
   (if (keywordp (car __global_descriptor))
       (send* _global_descriptor __global_descriptor)
     (progn
       (if __global_descriptor (setq _global_descriptor (car __global_descriptor)))
       _global_descriptor)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/LaserScan _scan
    (send _scan :serialization-length)
    ;; sensor_msgs/PointCloud2 _scan_cloud
    (send _scan_cloud :serialization-length)
    ;; rtabmap_msgs/GlobalDescriptor _global_descriptor
    (send _global_descriptor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/LaserScan _scan
       (send _scan :serialize s)
     ;; sensor_msgs/PointCloud2 _scan_cloud
       (send _scan_cloud :serialize s)
     ;; rtabmap_msgs/GlobalDescriptor _global_descriptor
       (send _global_descriptor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/LaserScan _scan
     (send _scan :deserialize buf ptr-) (incf ptr- (send _scan :serialization-length))
   ;; sensor_msgs/PointCloud2 _scan_cloud
     (send _scan_cloud :deserialize buf ptr-) (incf ptr- (send _scan_cloud :serialization-length))
   ;; rtabmap_msgs/GlobalDescriptor _global_descriptor
     (send _global_descriptor :deserialize buf ptr-) (incf ptr- (send _global_descriptor :serialization-length))
   ;;
   self)
  )

(setf (get rtabmap_msgs::ScanDescriptor :md5sum-) "e76f45a9fe00fd5492368db8040ccbec")
(setf (get rtabmap_msgs::ScanDescriptor :datatype-) "rtabmap_msgs/ScanDescriptor")
(setf (get rtabmap_msgs::ScanDescriptor :definition-)
      "
Header header

# scan or scan_cloud is set
sensor_msgs/LaserScan scan
sensor_msgs/PointCloud2 scan_cloud

GlobalDescriptor global_descriptor
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: rtabmap_msgs/GlobalDescriptor

Header header

# compressed global descriptor
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
int32 type
uint8[] info
uint8[] data
")



(provide :rtabmap_msgs/ScanDescriptor "e76f45a9fe00fd5492368db8040ccbec")


