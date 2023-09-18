// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyPoint = require('./KeyPoint.js');
let Point3f = require('./Point3f.js');
let GlobalDescriptor = require('./GlobalDescriptor.js');
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class RGBDImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rgb_camera_info = null;
      this.depth_camera_info = null;
      this.rgb = null;
      this.depth = null;
      this.rgb_compressed = null;
      this.depth_compressed = null;
      this.key_points = null;
      this.points = null;
      this.descriptors = null;
      this.global_descriptor = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rgb_camera_info')) {
        this.rgb_camera_info = initObj.rgb_camera_info
      }
      else {
        this.rgb_camera_info = new sensor_msgs.msg.CameraInfo();
      }
      if (initObj.hasOwnProperty('depth_camera_info')) {
        this.depth_camera_info = initObj.depth_camera_info
      }
      else {
        this.depth_camera_info = new sensor_msgs.msg.CameraInfo();
      }
      if (initObj.hasOwnProperty('rgb')) {
        this.rgb = initObj.rgb
      }
      else {
        this.rgb = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('rgb_compressed')) {
        this.rgb_compressed = initObj.rgb_compressed
      }
      else {
        this.rgb_compressed = new sensor_msgs.msg.CompressedImage();
      }
      if (initObj.hasOwnProperty('depth_compressed')) {
        this.depth_compressed = initObj.depth_compressed
      }
      else {
        this.depth_compressed = new sensor_msgs.msg.CompressedImage();
      }
      if (initObj.hasOwnProperty('key_points')) {
        this.key_points = initObj.key_points
      }
      else {
        this.key_points = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('descriptors')) {
        this.descriptors = initObj.descriptors
      }
      else {
        this.descriptors = [];
      }
      if (initObj.hasOwnProperty('global_descriptor')) {
        this.global_descriptor = initObj.global_descriptor
      }
      else {
        this.global_descriptor = new GlobalDescriptor();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RGBDImage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rgb_camera_info]
    bufferOffset = sensor_msgs.msg.CameraInfo.serialize(obj.rgb_camera_info, buffer, bufferOffset);
    // Serialize message field [depth_camera_info]
    bufferOffset = sensor_msgs.msg.CameraInfo.serialize(obj.depth_camera_info, buffer, bufferOffset);
    // Serialize message field [rgb]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.rgb, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth, buffer, bufferOffset);
    // Serialize message field [rgb_compressed]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.rgb_compressed, buffer, bufferOffset);
    // Serialize message field [depth_compressed]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.depth_compressed, buffer, bufferOffset);
    // Serialize message field [key_points]
    // Serialize the length for message field [key_points]
    bufferOffset = _serializer.uint32(obj.key_points.length, buffer, bufferOffset);
    obj.key_points.forEach((val) => {
      bufferOffset = KeyPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [descriptors]
    bufferOffset = _arraySerializer.uint8(obj.descriptors, buffer, bufferOffset, null);
    // Serialize message field [global_descriptor]
    bufferOffset = GlobalDescriptor.serialize(obj.global_descriptor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RGBDImage
    let len;
    let data = new RGBDImage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rgb_camera_info]
    data.rgb_camera_info = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth_camera_info]
    data.depth_camera_info = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [rgb]
    data.rgb = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [rgb_compressed]
    data.rgb_compressed = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth_compressed]
    data.depth_compressed = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [key_points]
    // Deserialize array length for message field [key_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.key_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.key_points[i] = KeyPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [descriptors]
    data.descriptors = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [global_descriptor]
    data.global_descriptor = GlobalDescriptor.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.CameraInfo.getMessageSize(object.rgb_camera_info);
    length += sensor_msgs.msg.CameraInfo.getMessageSize(object.depth_camera_info);
    length += sensor_msgs.msg.Image.getMessageSize(object.rgb);
    length += sensor_msgs.msg.Image.getMessageSize(object.depth);
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.rgb_compressed);
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.depth_compressed);
    length += 28 * object.key_points.length;
    length += 12 * object.points.length;
    length += object.descriptors.length;
    length += GlobalDescriptor.getMessageSize(object.global_descriptor);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/RGBDImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'affef6cc8804ffba98ce6ed6f1ca8942';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
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
    # camera namespace on topic "camera_info" and accompanied by up to five
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
    # self-calibrating systems may "recalibrate" frequently.              #
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
    # sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
    # simple model of radial and tangential distortion - is sufficient.
    string distortion_model
    
    # The distortion parameters, size depending on the distortion model.
    # For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
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
    #  neighborhoods of pixels into larger "super-pixels." It reduces the
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
    
    # True if a distinct rectified ROI should be calculated from the "raw"
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
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    int32 type
    uint8[] info
    uint8[] data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RGBDImage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rgb_camera_info !== undefined) {
      resolved.rgb_camera_info = sensor_msgs.msg.CameraInfo.Resolve(msg.rgb_camera_info)
    }
    else {
      resolved.rgb_camera_info = new sensor_msgs.msg.CameraInfo()
    }

    if (msg.depth_camera_info !== undefined) {
      resolved.depth_camera_info = sensor_msgs.msg.CameraInfo.Resolve(msg.depth_camera_info)
    }
    else {
      resolved.depth_camera_info = new sensor_msgs.msg.CameraInfo()
    }

    if (msg.rgb !== undefined) {
      resolved.rgb = sensor_msgs.msg.Image.Resolve(msg.rgb)
    }
    else {
      resolved.rgb = new sensor_msgs.msg.Image()
    }

    if (msg.depth !== undefined) {
      resolved.depth = sensor_msgs.msg.Image.Resolve(msg.depth)
    }
    else {
      resolved.depth = new sensor_msgs.msg.Image()
    }

    if (msg.rgb_compressed !== undefined) {
      resolved.rgb_compressed = sensor_msgs.msg.CompressedImage.Resolve(msg.rgb_compressed)
    }
    else {
      resolved.rgb_compressed = new sensor_msgs.msg.CompressedImage()
    }

    if (msg.depth_compressed !== undefined) {
      resolved.depth_compressed = sensor_msgs.msg.CompressedImage.Resolve(msg.depth_compressed)
    }
    else {
      resolved.depth_compressed = new sensor_msgs.msg.CompressedImage()
    }

    if (msg.key_points !== undefined) {
      resolved.key_points = new Array(msg.key_points.length);
      for (let i = 0; i < resolved.key_points.length; ++i) {
        resolved.key_points[i] = KeyPoint.Resolve(msg.key_points[i]);
      }
    }
    else {
      resolved.key_points = []
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Point3f.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.descriptors !== undefined) {
      resolved.descriptors = msg.descriptors;
    }
    else {
      resolved.descriptors = []
    }

    if (msg.global_descriptor !== undefined) {
      resolved.global_descriptor = GlobalDescriptor.Resolve(msg.global_descriptor)
    }
    else {
      resolved.global_descriptor = new GlobalDescriptor()
    }

    return resolved;
    }
};

module.exports = RGBDImage;
