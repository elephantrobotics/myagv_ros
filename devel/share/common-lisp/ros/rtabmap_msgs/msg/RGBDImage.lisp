; Auto-generated. Do not edit!


(cl:in-package rtabmap_msgs-msg)


;//! \htmlinclude RGBDImage.msg.html

(cl:defclass <RGBDImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rgb_camera_info
    :reader rgb_camera_info
    :initarg :rgb_camera_info
    :type sensor_msgs-msg:CameraInfo
    :initform (cl:make-instance 'sensor_msgs-msg:CameraInfo))
   (depth_camera_info
    :reader depth_camera_info
    :initarg :depth_camera_info
    :type sensor_msgs-msg:CameraInfo
    :initform (cl:make-instance 'sensor_msgs-msg:CameraInfo))
   (rgb
    :reader rgb
    :initarg :rgb
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth
    :reader depth
    :initarg :depth
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (rgb_compressed
    :reader rgb_compressed
    :initarg :rgb_compressed
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage))
   (depth_compressed
    :reader depth_compressed
    :initarg :depth_compressed
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage))
   (key_points
    :reader key_points
    :initarg :key_points
    :type (cl:vector rtabmap_msgs-msg:KeyPoint)
   :initform (cl:make-array 0 :element-type 'rtabmap_msgs-msg:KeyPoint :initial-element (cl:make-instance 'rtabmap_msgs-msg:KeyPoint)))
   (points
    :reader points
    :initarg :points
    :type (cl:vector rtabmap_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'rtabmap_msgs-msg:Point3f :initial-element (cl:make-instance 'rtabmap_msgs-msg:Point3f)))
   (descriptors
    :reader descriptors
    :initarg :descriptors
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (global_descriptor
    :reader global_descriptor
    :initarg :global_descriptor
    :type rtabmap_msgs-msg:GlobalDescriptor
    :initform (cl:make-instance 'rtabmap_msgs-msg:GlobalDescriptor)))
)

(cl:defclass RGBDImage (<RGBDImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RGBDImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RGBDImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rtabmap_msgs-msg:<RGBDImage> is deprecated: use rtabmap_msgs-msg:RGBDImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:header-val is deprecated.  Use rtabmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rgb_camera_info-val :lambda-list '(m))
(cl:defmethod rgb_camera_info-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:rgb_camera_info-val is deprecated.  Use rtabmap_msgs-msg:rgb_camera_info instead.")
  (rgb_camera_info m))

(cl:ensure-generic-function 'depth_camera_info-val :lambda-list '(m))
(cl:defmethod depth_camera_info-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:depth_camera_info-val is deprecated.  Use rtabmap_msgs-msg:depth_camera_info instead.")
  (depth_camera_info m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:rgb-val is deprecated.  Use rtabmap_msgs-msg:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:depth-val is deprecated.  Use rtabmap_msgs-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'rgb_compressed-val :lambda-list '(m))
(cl:defmethod rgb_compressed-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:rgb_compressed-val is deprecated.  Use rtabmap_msgs-msg:rgb_compressed instead.")
  (rgb_compressed m))

(cl:ensure-generic-function 'depth_compressed-val :lambda-list '(m))
(cl:defmethod depth_compressed-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:depth_compressed-val is deprecated.  Use rtabmap_msgs-msg:depth_compressed instead.")
  (depth_compressed m))

(cl:ensure-generic-function 'key_points-val :lambda-list '(m))
(cl:defmethod key_points-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:key_points-val is deprecated.  Use rtabmap_msgs-msg:key_points instead.")
  (key_points m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:points-val is deprecated.  Use rtabmap_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'descriptors-val :lambda-list '(m))
(cl:defmethod descriptors-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:descriptors-val is deprecated.  Use rtabmap_msgs-msg:descriptors instead.")
  (descriptors m))

(cl:ensure-generic-function 'global_descriptor-val :lambda-list '(m))
(cl:defmethod global_descriptor-val ((m <RGBDImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rtabmap_msgs-msg:global_descriptor-val is deprecated.  Use rtabmap_msgs-msg:global_descriptor instead.")
  (global_descriptor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RGBDImage>) ostream)
  "Serializes a message object of type '<RGBDImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rgb_camera_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_camera_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rgb) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rgb_compressed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_compressed) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'key_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'key_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'descriptors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'descriptors))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_descriptor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RGBDImage>) istream)
  "Deserializes a message object of type '<RGBDImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rgb_camera_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_camera_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rgb) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rgb_compressed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_compressed) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'key_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'key_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtabmap_msgs-msg:KeyPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rtabmap_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'descriptors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'descriptors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_descriptor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RGBDImage>)))
  "Returns string type for a message object of type '<RGBDImage>"
  "rtabmap_msgs/RGBDImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RGBDImage)))
  "Returns string type for a message object of type 'RGBDImage"
  "rtabmap_msgs/RGBDImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RGBDImage>)))
  "Returns md5sum for a message object of type '<RGBDImage>"
  "affef6cc8804ffba98ce6ed6f1ca8942")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RGBDImage)))
  "Returns md5sum for a message object of type 'RGBDImage"
  "affef6cc8804ffba98ce6ed6f1ca8942")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RGBDImage>)))
  "Returns full string definition for message of type '<RGBDImage>"
  (cl:format cl:nil "~%Header header~%~%# For stereo, rgb corresponds to left camera, and depth the right camera.~%~%# camera info~%sensor_msgs/CameraInfo rgb_camera_info~%sensor_msgs/CameraInfo depth_camera_info~%~%# Raw~%sensor_msgs/Image rgb~%sensor_msgs/Image depth~%~%# Compressed~%sensor_msgs/CompressedImage rgb_compressed~%sensor_msgs/CompressedImage depth_compressed~%~%# Local features~%KeyPoint[] key_points~%Point3f[] points~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] descriptors~%~%GlobalDescriptor global_descriptor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RGBDImage)))
  "Returns full string definition for message of type 'RGBDImage"
  (cl:format cl:nil "~%Header header~%~%# For stereo, rgb corresponds to left camera, and depth the right camera.~%~%# camera info~%sensor_msgs/CameraInfo rgb_camera_info~%sensor_msgs/CameraInfo depth_camera_info~%~%# Raw~%sensor_msgs/Image rgb~%sensor_msgs/Image depth~%~%# Compressed~%sensor_msgs/CompressedImage rgb_compressed~%sensor_msgs/CompressedImage depth_compressed~%~%# Local features~%KeyPoint[] key_points~%Point3f[] points~%# compressed descriptors~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%uint8[] descriptors~%~%GlobalDescriptor global_descriptor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: rtabmap_msgs/KeyPoint~%#class cv::KeyPoint~%#{~%#    Point2f pt;~%#    float size;~%#    float angle;~%#    float response;~%#    int octave;~%#    int class_id;~%#}~%~%Point2f pt~%float32 size~%float32 angle~%float32 response~%int32 octave~%int32 class_id~%================================================================================~%MSG: rtabmap_msgs/Point2f~%#class cv::Point2f~%#{~%#    float x;~%#    float y;~%#}~%~%float32 x~%float32 y~%================================================================================~%MSG: rtabmap_msgs/Point3f~%#class cv::Point3f~%#{~%#    float x;~%#    float y;~%#    float z;~%#}~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: rtabmap_msgs/GlobalDescriptor~%~%Header header~%~%# compressed global descriptor~%# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"~%int32 type~%uint8[] info~%uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RGBDImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgb_camera_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_camera_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgb))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rgb_compressed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_compressed))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'key_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'descriptors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_descriptor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RGBDImage>))
  "Converts a ROS message object to a list"
  (cl:list 'RGBDImage
    (cl:cons ':header (header msg))
    (cl:cons ':rgb_camera_info (rgb_camera_info msg))
    (cl:cons ':depth_camera_info (depth_camera_info msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':rgb_compressed (rgb_compressed msg))
    (cl:cons ':depth_compressed (depth_compressed msg))
    (cl:cons ':key_points (key_points msg))
    (cl:cons ':points (points msg))
    (cl:cons ':descriptors (descriptors msg))
    (cl:cons ':global_descriptor (global_descriptor msg))
))
