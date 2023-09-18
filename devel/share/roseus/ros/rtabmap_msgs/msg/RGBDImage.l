;; Auto-generated. Do not edit!


(when (boundp 'rtabmap_msgs::RGBDImage)
  (if (not (find-package "RTABMAP_MSGS"))
    (make-package "RTABMAP_MSGS"))
  (shadow 'RGBDImage (find-package "RTABMAP_MSGS")))
(unless (find-package "RTABMAP_MSGS::RGBDIMAGE")
  (make-package "RTABMAP_MSGS::RGBDIMAGE"))

(in-package "ROS")
;;//! \htmlinclude RGBDImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rtabmap_msgs::RGBDImage
  :super ros::object
  :slots (_header _rgb_camera_info _depth_camera_info _rgb _depth _rgb_compressed _depth_compressed _key_points _points _descriptors _global_descriptor ))

(defmethod rtabmap_msgs::RGBDImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rgb_camera_info __rgb_camera_info) (instance sensor_msgs::CameraInfo :init))
    ((:depth_camera_info __depth_camera_info) (instance sensor_msgs::CameraInfo :init))
    ((:rgb __rgb) (instance sensor_msgs::Image :init))
    ((:depth __depth) (instance sensor_msgs::Image :init))
    ((:rgb_compressed __rgb_compressed) (instance sensor_msgs::CompressedImage :init))
    ((:depth_compressed __depth_compressed) (instance sensor_msgs::CompressedImage :init))
    ((:key_points __key_points) ())
    ((:points __points) ())
    ((:descriptors __descriptors) (make-array 0 :initial-element 0 :element-type :char))
    ((:global_descriptor __global_descriptor) (instance rtabmap_msgs::GlobalDescriptor :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rgb_camera_info __rgb_camera_info)
   (setq _depth_camera_info __depth_camera_info)
   (setq _rgb __rgb)
   (setq _depth __depth)
   (setq _rgb_compressed __rgb_compressed)
   (setq _depth_compressed __depth_compressed)
   (setq _key_points __key_points)
   (setq _points __points)
   (setq _descriptors __descriptors)
   (setq _global_descriptor __global_descriptor)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rgb_camera_info
   (&rest __rgb_camera_info)
   (if (keywordp (car __rgb_camera_info))
       (send* _rgb_camera_info __rgb_camera_info)
     (progn
       (if __rgb_camera_info (setq _rgb_camera_info (car __rgb_camera_info)))
       _rgb_camera_info)))
  (:depth_camera_info
   (&rest __depth_camera_info)
   (if (keywordp (car __depth_camera_info))
       (send* _depth_camera_info __depth_camera_info)
     (progn
       (if __depth_camera_info (setq _depth_camera_info (car __depth_camera_info)))
       _depth_camera_info)))
  (:rgb
   (&rest __rgb)
   (if (keywordp (car __rgb))
       (send* _rgb __rgb)
     (progn
       (if __rgb (setq _rgb (car __rgb)))
       _rgb)))
  (:depth
   (&rest __depth)
   (if (keywordp (car __depth))
       (send* _depth __depth)
     (progn
       (if __depth (setq _depth (car __depth)))
       _depth)))
  (:rgb_compressed
   (&rest __rgb_compressed)
   (if (keywordp (car __rgb_compressed))
       (send* _rgb_compressed __rgb_compressed)
     (progn
       (if __rgb_compressed (setq _rgb_compressed (car __rgb_compressed)))
       _rgb_compressed)))
  (:depth_compressed
   (&rest __depth_compressed)
   (if (keywordp (car __depth_compressed))
       (send* _depth_compressed __depth_compressed)
     (progn
       (if __depth_compressed (setq _depth_compressed (car __depth_compressed)))
       _depth_compressed)))
  (:key_points
   (&rest __key_points)
   (if (keywordp (car __key_points))
       (send* _key_points __key_points)
     (progn
       (if __key_points (setq _key_points (car __key_points)))
       _key_points)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:descriptors
   (&optional __descriptors)
   (if __descriptors (setq _descriptors __descriptors)) _descriptors)
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
    ;; sensor_msgs/CameraInfo _rgb_camera_info
    (send _rgb_camera_info :serialization-length)
    ;; sensor_msgs/CameraInfo _depth_camera_info
    (send _depth_camera_info :serialization-length)
    ;; sensor_msgs/Image _rgb
    (send _rgb :serialization-length)
    ;; sensor_msgs/Image _depth
    (send _depth :serialization-length)
    ;; sensor_msgs/CompressedImage _rgb_compressed
    (send _rgb_compressed :serialization-length)
    ;; sensor_msgs/CompressedImage _depth_compressed
    (send _depth_compressed :serialization-length)
    ;; rtabmap_msgs/KeyPoint[] _key_points
    (apply #'+ (send-all _key_points :serialization-length)) 4
    ;; rtabmap_msgs/Point3f[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; uint8[] _descriptors
    (* 1    (length _descriptors)) 4
    ;; rtabmap_msgs/GlobalDescriptor _global_descriptor
    (send _global_descriptor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/CameraInfo _rgb_camera_info
       (send _rgb_camera_info :serialize s)
     ;; sensor_msgs/CameraInfo _depth_camera_info
       (send _depth_camera_info :serialize s)
     ;; sensor_msgs/Image _rgb
       (send _rgb :serialize s)
     ;; sensor_msgs/Image _depth
       (send _depth :serialize s)
     ;; sensor_msgs/CompressedImage _rgb_compressed
       (send _rgb_compressed :serialize s)
     ;; sensor_msgs/CompressedImage _depth_compressed
       (send _depth_compressed :serialize s)
     ;; rtabmap_msgs/KeyPoint[] _key_points
     (write-long (length _key_points) s)
     (dolist (elem _key_points)
       (send elem :serialize s)
       )
     ;; rtabmap_msgs/Point3f[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; uint8[] _descriptors
     (write-long (length _descriptors) s)
     (princ _descriptors s)
     ;; rtabmap_msgs/GlobalDescriptor _global_descriptor
       (send _global_descriptor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/CameraInfo _rgb_camera_info
     (send _rgb_camera_info :deserialize buf ptr-) (incf ptr- (send _rgb_camera_info :serialization-length))
   ;; sensor_msgs/CameraInfo _depth_camera_info
     (send _depth_camera_info :deserialize buf ptr-) (incf ptr- (send _depth_camera_info :serialization-length))
   ;; sensor_msgs/Image _rgb
     (send _rgb :deserialize buf ptr-) (incf ptr- (send _rgb :serialization-length))
   ;; sensor_msgs/Image _depth
     (send _depth :deserialize buf ptr-) (incf ptr- (send _depth :serialization-length))
   ;; sensor_msgs/CompressedImage _rgb_compressed
     (send _rgb_compressed :deserialize buf ptr-) (incf ptr- (send _rgb_compressed :serialization-length))
   ;; sensor_msgs/CompressedImage _depth_compressed
     (send _depth_compressed :deserialize buf ptr-) (incf ptr- (send _depth_compressed :serialization-length))
   ;; rtabmap_msgs/KeyPoint[] _key_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _key_points (let (r) (dotimes (i n) (push (instance rtabmap_msgs::KeyPoint :init) r)) r))
     (dolist (elem- _key_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; rtabmap_msgs/Point3f[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance rtabmap_msgs::Point3f :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _descriptors
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _descriptors (make-array n :element-type :char))
     (replace _descriptors buf :start2 ptr-) (incf ptr- n))
   ;; rtabmap_msgs/GlobalDescriptor _global_descriptor
     (send _global_descriptor :deserialize buf ptr-) (incf ptr- (send _global_descriptor :serialization-length))
   ;;
   self)
  )

(setf (get rtabmap_msgs::RGBDImage :md5sum-) "affef6cc8804ffba98ce6ed6f1ca8942")
(setf (get rtabmap_msgs::RGBDImage :datatype-) "rtabmap_msgs/RGBDImage")
(setf (get rtabmap_msgs::RGBDImage :definition-)
      "
Header header

# For stereo, rgb corresponds to left camera, and depth the right camera.

# camera info
sensor_msgs/CameraInfo rgb_camera_info
sensor_msgs/CameraInfo depth_camera_info

# Raw
sensor_msgs/Image rgb
sensor_msgs/Image depth

# Compressed
sensor_msgs/CompressedImage rgb_compressed
sensor_msgs/CompressedImage depth_compressed

# Local features
KeyPoint[] key_points
Point3f[] points
# compressed descriptors
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
uint8[] descriptors

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
MSG: sensor_msgs/CameraInfo
# This message defines meta information for a camera. It should be in a
# camera namespace on topic \"camera_info\" and accompanied by up to five
# image topics named:
#
#   image_raw - raw data from the camera driver, possibly Bayer encoded
#   image            - monochrome, distorted
#   image_color      - color, distorted
#   image_rect       - monochrome, rectified
#   image_rect_color - color, rectified
#
# The image_pipeline contains packages (image_proc, stereo_image_proc)
# for producing the four processed image topics from image_raw and
# camera_info. The meaning of the camera parameters are described in
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
#
# The image_geometry package provides a user-friendly interface to
# common operations using this meta information. If you want to, e.g.,
# project a 3d point into image coordinates, we strongly recommend
# using image_geometry.
#
# If the camera is uncalibrated, the matrices D, K, R, P should be left
# zeroed out. In particular, clients may assume that K[0] == 0.0
# indicates an uncalibrated camera.

#######################################################################
#                     Image acquisition info                          #
#######################################################################

# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image


#######################################################################
#                      Calibration Parameters                         #
#######################################################################
# These are fixed during camera calibration. Their values will be the #
# same in all messages until the camera is recalibrated. Note that    #
# self-calibrating systems may \"recalibrate\" frequently.              #
#                                                                     #
# The internal parameters can be used to warp a raw (distorted) image #
# to:                                                                 #
#   1. An undistorted image (requires D and K)                        #
#   2. A rectified image (requires D, K, R)                           #
# The projection matrix P projects 3D points into the rectified image.#
#######################################################################

# The image dimensions with which the camera was calibrated. Normally
# this will be the full camera resolution in pixels.
uint32 height
uint32 width

# The distortion model used. Supported models are listed in
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] D

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  K # 3x3 row-major matrix

# Rectification matrix (stereo cameras only)
# A rotation matrix aligning the camera coordinate system to the ideal
# stereo image plane so that epipolar lines in both stereo images are
# parallel.
float64[9]  R # 3x3 row-major matrix

# Projection/camera matrix
#     [fx'  0  cx' Tx]
# P = [ 0  fy' cy' Ty]
#     [ 0   0   1   0]
# By convention, this matrix specifies the intrinsic (camera) matrix
#  of the processed (rectified) image. That is, the left 3x3 portion
#  is the normal camera intrinsic matrix for the rectified image.
# It projects 3D points in the camera coordinate frame to 2D pixel
#  coordinates using the focal lengths (fx', fy') and principal point
#  (cx', cy') - these may differ from the values in K.
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
#  also have R = the identity and P[1:3,1:3] = K.
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the
#  position of the optical center of the second camera in the first
#  camera's frame. We assume Tz = 0 so both cameras are in the same
#  stereo image plane. The first camera always has Tx = Ty = 0. For
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and
#  Tx = -fx' * B, where B is the baseline between the cameras.
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto
#  the rectified image is given by:
#  [u v w]' = P * [X Y Z 1]'
#         x = u / w
#         y = v / w
#  This holds for both images of a stereo pair.
float64[12] P # 3x4 row-major matrix


#######################################################################
#                      Operational Parameters                         #
#######################################################################
# These define the image region actually captured by the camera       #
# driver. Although they affect the geometry of the output image, they #
# may be changed freely without recalibrating the camera.             #
#######################################################################

# Binning refers here to any camera setting which combines rectangular
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the
#  resolution of the output image to
#  (width / binning_x) x (height / binning_y).
# The default values binning_x = binning_y = 0 is considered the same
#  as binning_x = binning_y = 1 (no subsampling).
uint32 binning_x
uint32 binning_y

# Region of interest (subwindow of full camera resolution), given in
#  full resolution (unbinned) image coordinates. A particular ROI
#  always denotes the same window of pixels on the camera sensor,
#  regardless of binning settings.
# The default setting of roi (all values 0) is considered the same as
#  full resolution (roi.width = width, roi.height = height).
RegionOfInterest roi

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: rtabmap_msgs/KeyPoint
#class cv::KeyPoint
#{
#    Point2f pt;
#    float size;
#    float angle;
#    float response;
#    int octave;
#    int class_id;
#}

Point2f pt
float32 size
float32 angle
float32 response
int32 octave
int32 class_id
================================================================================
MSG: rtabmap_msgs/Point2f
#class cv::Point2f
#{
#    float x;
#    float y;
#}

float32 x
float32 y
================================================================================
MSG: rtabmap_msgs/Point3f
#class cv::Point3f
#{
#    float x;
#    float y;
#    float z;
#}

float32 x
float32 y
float32 z
================================================================================
MSG: rtabmap_msgs/GlobalDescriptor

Header header

# compressed global descriptor
# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"
int32 type
uint8[] info
uint8[] data
")



(provide :rtabmap_msgs/RGBDImage "affef6cc8804ffba98ce6ed6f1ca8942")


