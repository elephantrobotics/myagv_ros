// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3f = require('./Point3f.js');
let KeyPoint = require('./KeyPoint.js');
let GlobalDescriptor = require('./GlobalDescriptor.js');
let EnvSensor = require('./EnvSensor.js');
let LandmarkDetection = require('./LandmarkDetection.js');
let GPS = require('./GPS.js');
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SensorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left = null;
      this.right = null;
      this.left_compressed = null;
      this.right_compressed = null;
      this.left_camera_info = null;
      this.right_camera_info = null;
      this.local_transform = null;
      this.laser_scan = null;
      this.laser_scan_compressed = null;
      this.laser_scan_max_pts = null;
      this.laser_scan_max_range = null;
      this.laser_scan_format = null;
      this.laser_scan_local_transform = null;
      this.user_data = null;
      this.grid_ground = null;
      this.grid_obstacles = null;
      this.grid_empty_cells = null;
      this.grid_cell_size = null;
      this.grid_view_point = null;
      this.key_points = null;
      this.points = null;
      this.descriptors = null;
      this.global_descriptors = null;
      this.env_sensors = null;
      this.imu = null;
      this.imu_local_transform = null;
      this.landmarks = null;
      this.ground_truth_pose = null;
      this.gps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('left_compressed')) {
        this.left_compressed = initObj.left_compressed
      }
      else {
        this.left_compressed = [];
      }
      if (initObj.hasOwnProperty('right_compressed')) {
        this.right_compressed = initObj.right_compressed
      }
      else {
        this.right_compressed = [];
      }
      if (initObj.hasOwnProperty('left_camera_info')) {
        this.left_camera_info = initObj.left_camera_info
      }
      else {
        this.left_camera_info = [];
      }
      if (initObj.hasOwnProperty('right_camera_info')) {
        this.right_camera_info = initObj.right_camera_info
      }
      else {
        this.right_camera_info = [];
      }
      if (initObj.hasOwnProperty('local_transform')) {
        this.local_transform = initObj.local_transform
      }
      else {
        this.local_transform = [];
      }
      if (initObj.hasOwnProperty('laser_scan')) {
        this.laser_scan = initObj.laser_scan
      }
      else {
        this.laser_scan = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('laser_scan_compressed')) {
        this.laser_scan_compressed = initObj.laser_scan_compressed
      }
      else {
        this.laser_scan_compressed = [];
      }
      if (initObj.hasOwnProperty('laser_scan_max_pts')) {
        this.laser_scan_max_pts = initObj.laser_scan_max_pts
      }
      else {
        this.laser_scan_max_pts = 0;
      }
      if (initObj.hasOwnProperty('laser_scan_max_range')) {
        this.laser_scan_max_range = initObj.laser_scan_max_range
      }
      else {
        this.laser_scan_max_range = 0.0;
      }
      if (initObj.hasOwnProperty('laser_scan_format')) {
        this.laser_scan_format = initObj.laser_scan_format
      }
      else {
        this.laser_scan_format = 0;
      }
      if (initObj.hasOwnProperty('laser_scan_local_transform')) {
        this.laser_scan_local_transform = initObj.laser_scan_local_transform
      }
      else {
        this.laser_scan_local_transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('user_data')) {
        this.user_data = initObj.user_data
      }
      else {
        this.user_data = [];
      }
      if (initObj.hasOwnProperty('grid_ground')) {
        this.grid_ground = initObj.grid_ground
      }
      else {
        this.grid_ground = [];
      }
      if (initObj.hasOwnProperty('grid_obstacles')) {
        this.grid_obstacles = initObj.grid_obstacles
      }
      else {
        this.grid_obstacles = [];
      }
      if (initObj.hasOwnProperty('grid_empty_cells')) {
        this.grid_empty_cells = initObj.grid_empty_cells
      }
      else {
        this.grid_empty_cells = [];
      }
      if (initObj.hasOwnProperty('grid_cell_size')) {
        this.grid_cell_size = initObj.grid_cell_size
      }
      else {
        this.grid_cell_size = 0.0;
      }
      if (initObj.hasOwnProperty('grid_view_point')) {
        this.grid_view_point = initObj.grid_view_point
      }
      else {
        this.grid_view_point = new Point3f();
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
      if (initObj.hasOwnProperty('global_descriptors')) {
        this.global_descriptors = initObj.global_descriptors
      }
      else {
        this.global_descriptors = [];
      }
      if (initObj.hasOwnProperty('env_sensors')) {
        this.env_sensors = initObj.env_sensors
      }
      else {
        this.env_sensors = [];
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('imu_local_transform')) {
        this.imu_local_transform = initObj.imu_local_transform
      }
      else {
        this.imu_local_transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('landmarks')) {
        this.landmarks = initObj.landmarks
      }
      else {
        this.landmarks = [];
      }
      if (initObj.hasOwnProperty('ground_truth_pose')) {
        this.ground_truth_pose = initObj.ground_truth_pose
      }
      else {
        this.ground_truth_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('gps')) {
        this.gps = initObj.gps
      }
      else {
        this.gps = new GPS();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.right, buffer, bufferOffset);
    // Serialize message field [left_compressed]
    bufferOffset = _arraySerializer.uint8(obj.left_compressed, buffer, bufferOffset, null);
    // Serialize message field [right_compressed]
    bufferOffset = _arraySerializer.uint8(obj.right_compressed, buffer, bufferOffset, null);
    // Serialize message field [left_camera_info]
    // Serialize the length for message field [left_camera_info]
    bufferOffset = _serializer.uint32(obj.left_camera_info.length, buffer, bufferOffset);
    obj.left_camera_info.forEach((val) => {
      bufferOffset = sensor_msgs.msg.CameraInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_camera_info]
    // Serialize the length for message field [right_camera_info]
    bufferOffset = _serializer.uint32(obj.right_camera_info.length, buffer, bufferOffset);
    obj.right_camera_info.forEach((val) => {
      bufferOffset = sensor_msgs.msg.CameraInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [local_transform]
    // Serialize the length for message field [local_transform]
    bufferOffset = _serializer.uint32(obj.local_transform.length, buffer, bufferOffset);
    obj.local_transform.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Transform.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [laser_scan]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.laser_scan, buffer, bufferOffset);
    // Serialize message field [laser_scan_compressed]
    bufferOffset = _arraySerializer.uint8(obj.laser_scan_compressed, buffer, bufferOffset, null);
    // Serialize message field [laser_scan_max_pts]
    bufferOffset = _serializer.int32(obj.laser_scan_max_pts, buffer, bufferOffset);
    // Serialize message field [laser_scan_max_range]
    bufferOffset = _serializer.float32(obj.laser_scan_max_range, buffer, bufferOffset);
    // Serialize message field [laser_scan_format]
    bufferOffset = _serializer.int32(obj.laser_scan_format, buffer, bufferOffset);
    // Serialize message field [laser_scan_local_transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.laser_scan_local_transform, buffer, bufferOffset);
    // Serialize message field [user_data]
    bufferOffset = _arraySerializer.uint8(obj.user_data, buffer, bufferOffset, null);
    // Serialize message field [grid_ground]
    bufferOffset = _arraySerializer.uint8(obj.grid_ground, buffer, bufferOffset, null);
    // Serialize message field [grid_obstacles]
    bufferOffset = _arraySerializer.uint8(obj.grid_obstacles, buffer, bufferOffset, null);
    // Serialize message field [grid_empty_cells]
    bufferOffset = _arraySerializer.uint8(obj.grid_empty_cells, buffer, bufferOffset, null);
    // Serialize message field [grid_cell_size]
    bufferOffset = _serializer.float32(obj.grid_cell_size, buffer, bufferOffset);
    // Serialize message field [grid_view_point]
    bufferOffset = Point3f.serialize(obj.grid_view_point, buffer, bufferOffset);
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
    // Serialize message field [global_descriptors]
    // Serialize the length for message field [global_descriptors]
    bufferOffset = _serializer.uint32(obj.global_descriptors.length, buffer, bufferOffset);
    obj.global_descriptors.forEach((val) => {
      bufferOffset = GlobalDescriptor.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [env_sensors]
    // Serialize the length for message field [env_sensors]
    bufferOffset = _serializer.uint32(obj.env_sensors.length, buffer, bufferOffset);
    obj.env_sensors.forEach((val) => {
      bufferOffset = EnvSensor.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [imu]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.imu, buffer, bufferOffset);
    // Serialize message field [imu_local_transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.imu_local_transform, buffer, bufferOffset);
    // Serialize message field [landmarks]
    // Serialize the length for message field [landmarks]
    bufferOffset = _serializer.uint32(obj.landmarks.length, buffer, bufferOffset);
    obj.landmarks.forEach((val) => {
      bufferOffset = LandmarkDetection.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ground_truth_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.ground_truth_pose, buffer, bufferOffset);
    // Serialize message field [gps]
    bufferOffset = GPS.serialize(obj.gps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorData
    let len;
    let data = new SensorData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_compressed]
    data.left_compressed = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [right_compressed]
    data.right_compressed = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [left_camera_info]
    // Deserialize array length for message field [left_camera_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_camera_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_camera_info[i] = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_camera_info]
    // Deserialize array length for message field [right_camera_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_camera_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_camera_info[i] = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [local_transform]
    // Deserialize array length for message field [local_transform]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_transform = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_transform[i] = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [laser_scan]
    data.laser_scan = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [laser_scan_compressed]
    data.laser_scan_compressed = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [laser_scan_max_pts]
    data.laser_scan_max_pts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [laser_scan_max_range]
    data.laser_scan_max_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laser_scan_format]
    data.laser_scan_format = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [laser_scan_local_transform]
    data.laser_scan_local_transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [user_data]
    data.user_data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [grid_ground]
    data.grid_ground = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [grid_obstacles]
    data.grid_obstacles = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [grid_empty_cells]
    data.grid_empty_cells = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [grid_cell_size]
    data.grid_cell_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [grid_view_point]
    data.grid_view_point = Point3f.deserialize(buffer, bufferOffset);
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
    // Deserialize message field [global_descriptors]
    // Deserialize array length for message field [global_descriptors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.global_descriptors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.global_descriptors[i] = GlobalDescriptor.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [env_sensors]
    // Deserialize array length for message field [env_sensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.env_sensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.env_sensors[i] = EnvSensor.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [imu]
    data.imu = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [imu_local_transform]
    data.imu_local_transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [landmarks]
    // Deserialize array length for message field [landmarks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmarks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmarks[i] = LandmarkDetection.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ground_truth_pose]
    data.ground_truth_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps]
    data.gps = GPS.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.Image.getMessageSize(object.left);
    length += sensor_msgs.msg.Image.getMessageSize(object.right);
    length += object.left_compressed.length;
    length += object.right_compressed.length;
    object.left_camera_info.forEach((val) => {
      length += sensor_msgs.msg.CameraInfo.getMessageSize(val);
    });
    object.right_camera_info.forEach((val) => {
      length += sensor_msgs.msg.CameraInfo.getMessageSize(val);
    });
    length += 56 * object.local_transform.length;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.laser_scan);
    length += object.laser_scan_compressed.length;
    length += object.user_data.length;
    length += object.grid_ground.length;
    length += object.grid_obstacles.length;
    length += object.grid_empty_cells.length;
    length += 28 * object.key_points.length;
    length += 12 * object.points.length;
    length += object.descriptors.length;
    object.global_descriptors.forEach((val) => {
      length += GlobalDescriptor.getMessageSize(val);
    });
    object.env_sensors.forEach((val) => {
      length += EnvSensor.getMessageSize(val);
    });
    length += sensor_msgs.msg.Imu.getMessageSize(object.imu);
    object.landmarks.forEach((val) => {
      length += LandmarkDetection.getMessageSize(val);
    });
    return length + 308;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/SensorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1408cf03fa94547ee9b7bdda6d8918c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #class rtabmap::SensorData
    
    Header header
    
    # For RGB-D, left corresponds to rgb camera, and right corresponds to depth camera.
    
    # Raw images
    sensor_msgs/Image left
    sensor_msgs/Image right
    
    # Compressed images
    # use rtabmap::util3d::uncompressImage() from "rtabmap/core/util3d.h"
    uint8[] left_compressed
    uint8[] right_compressed
    
    # Camera info
    sensor_msgs/CameraInfo[] left_camera_info
    sensor_msgs/CameraInfo[] right_camera_info
    
    # Transform from base frame to camera frame
    geometry_msgs/Transform[] local_transform
    
    # raw 2d or 3D laser scan
    sensor_msgs/PointCloud2 laser_scan
    # compressed 2D or 3D laser scan
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] laser_scan_compressed
    int32 laser_scan_max_pts
    float32 laser_scan_max_range
    int32 laser_scan_format
    # local transform (base frame -> laser frame)
    geometry_msgs/Transform laser_scan_local_transform
    
    # compressed user data
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] user_data
    
    # compressed occupancy grid
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] grid_ground
    uint8[] grid_obstacles
    uint8[] grid_empty_cells
    float32 grid_cell_size
    Point3f grid_view_point
    
    # Local features
    KeyPoint[] key_points
    Point3f[] points
    # compressed descriptors
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] descriptors
    
    GlobalDescriptor[] global_descriptors
    
    EnvSensor[] env_sensors
    
    sensor_msgs/Imu imu
    geometry_msgs/Transform imu_local_transform
    
    LandmarkDetection[] landmarks
    
    # Ground truth
    geometry_msgs/Pose ground_truth_pose
    
    # GPS
    GPS gps
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
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
    MSG: rtabmap_msgs/GlobalDescriptor
    
    Header header
    
    # compressed global descriptor
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    int32 type
    uint8[] info
    uint8[] data
    ================================================================================
    MSG: rtabmap_msgs/EnvSensor
    
    Header header
    
    # EnvSensor
    int32 type
    float64 value
    ================================================================================
    MSG: sensor_msgs/Imu
    # This is a message to hold data from an IMU (Inertial Measurement Unit)
    #
    # Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
    #
    # If the covariance of the measurement is known, it should be filled in (if all you know is the 
    # variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
    # data a covariance will have to be assumed or gotten from some other source
    #
    # If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
    # estimate), please set element 0 of the associated covariance matrix to -1
    # If you are interpreting this message, please check for a value of -1 in the first element of each 
    # covariance matrix, and disregard the associated estimate.
    
    Header header
    
    geometry_msgs/Quaternion orientation
    float64[9] orientation_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 angular_velocity
    float64[9] angular_velocity_covariance # Row major about x, y, z axes
    
    geometry_msgs/Vector3 linear_acceleration
    float64[9] linear_acceleration_covariance # Row major x, y z 
    
    ================================================================================
    MSG: rtabmap_msgs/LandmarkDetection
    
    # header.stamp: the timestamp of the detection (e.g. image timestamp)
    # header.frame_id: the base frame of pose (e.g., camera optical frame)
    std_msgs/Header header
    
    # Landmark's frame id
    string landmark_frame_id
    
    # Landmark's unique ID: should be >0
    int32 id
    
    # Size in meters of the landmark/tag (optional, set 0 to not use it).
    float32 size
    
    # Pose of the landmark in header.frame_id frame.
    # If covariance is unknown, keep it as null matrix.
    # rtabmap_slam/rtabmap's landmark_angular_variance and
    # landmark_linear_variance parameters can be used
    # for convenience if covariance is null.
    geometry_msgs/PoseWithCovariance pose
    
    
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: rtabmap_msgs/GPS
    
    float64 stamp      # in seconds
    float64 longitude  # DD format
    float64 latitude   # DD format
    float64 altitude   # in meters
    float64 error      # in meters
    float64 bearing    # North 0->360 deg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left !== undefined) {
      resolved.left = sensor_msgs.msg.Image.Resolve(msg.left)
    }
    else {
      resolved.left = new sensor_msgs.msg.Image()
    }

    if (msg.right !== undefined) {
      resolved.right = sensor_msgs.msg.Image.Resolve(msg.right)
    }
    else {
      resolved.right = new sensor_msgs.msg.Image()
    }

    if (msg.left_compressed !== undefined) {
      resolved.left_compressed = msg.left_compressed;
    }
    else {
      resolved.left_compressed = []
    }

    if (msg.right_compressed !== undefined) {
      resolved.right_compressed = msg.right_compressed;
    }
    else {
      resolved.right_compressed = []
    }

    if (msg.left_camera_info !== undefined) {
      resolved.left_camera_info = new Array(msg.left_camera_info.length);
      for (let i = 0; i < resolved.left_camera_info.length; ++i) {
        resolved.left_camera_info[i] = sensor_msgs.msg.CameraInfo.Resolve(msg.left_camera_info[i]);
      }
    }
    else {
      resolved.left_camera_info = []
    }

    if (msg.right_camera_info !== undefined) {
      resolved.right_camera_info = new Array(msg.right_camera_info.length);
      for (let i = 0; i < resolved.right_camera_info.length; ++i) {
        resolved.right_camera_info[i] = sensor_msgs.msg.CameraInfo.Resolve(msg.right_camera_info[i]);
      }
    }
    else {
      resolved.right_camera_info = []
    }

    if (msg.local_transform !== undefined) {
      resolved.local_transform = new Array(msg.local_transform.length);
      for (let i = 0; i < resolved.local_transform.length; ++i) {
        resolved.local_transform[i] = geometry_msgs.msg.Transform.Resolve(msg.local_transform[i]);
      }
    }
    else {
      resolved.local_transform = []
    }

    if (msg.laser_scan !== undefined) {
      resolved.laser_scan = sensor_msgs.msg.PointCloud2.Resolve(msg.laser_scan)
    }
    else {
      resolved.laser_scan = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.laser_scan_compressed !== undefined) {
      resolved.laser_scan_compressed = msg.laser_scan_compressed;
    }
    else {
      resolved.laser_scan_compressed = []
    }

    if (msg.laser_scan_max_pts !== undefined) {
      resolved.laser_scan_max_pts = msg.laser_scan_max_pts;
    }
    else {
      resolved.laser_scan_max_pts = 0
    }

    if (msg.laser_scan_max_range !== undefined) {
      resolved.laser_scan_max_range = msg.laser_scan_max_range;
    }
    else {
      resolved.laser_scan_max_range = 0.0
    }

    if (msg.laser_scan_format !== undefined) {
      resolved.laser_scan_format = msg.laser_scan_format;
    }
    else {
      resolved.laser_scan_format = 0
    }

    if (msg.laser_scan_local_transform !== undefined) {
      resolved.laser_scan_local_transform = geometry_msgs.msg.Transform.Resolve(msg.laser_scan_local_transform)
    }
    else {
      resolved.laser_scan_local_transform = new geometry_msgs.msg.Transform()
    }

    if (msg.user_data !== undefined) {
      resolved.user_data = msg.user_data;
    }
    else {
      resolved.user_data = []
    }

    if (msg.grid_ground !== undefined) {
      resolved.grid_ground = msg.grid_ground;
    }
    else {
      resolved.grid_ground = []
    }

    if (msg.grid_obstacles !== undefined) {
      resolved.grid_obstacles = msg.grid_obstacles;
    }
    else {
      resolved.grid_obstacles = []
    }

    if (msg.grid_empty_cells !== undefined) {
      resolved.grid_empty_cells = msg.grid_empty_cells;
    }
    else {
      resolved.grid_empty_cells = []
    }

    if (msg.grid_cell_size !== undefined) {
      resolved.grid_cell_size = msg.grid_cell_size;
    }
    else {
      resolved.grid_cell_size = 0.0
    }

    if (msg.grid_view_point !== undefined) {
      resolved.grid_view_point = Point3f.Resolve(msg.grid_view_point)
    }
    else {
      resolved.grid_view_point = new Point3f()
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

    if (msg.global_descriptors !== undefined) {
      resolved.global_descriptors = new Array(msg.global_descriptors.length);
      for (let i = 0; i < resolved.global_descriptors.length; ++i) {
        resolved.global_descriptors[i] = GlobalDescriptor.Resolve(msg.global_descriptors[i]);
      }
    }
    else {
      resolved.global_descriptors = []
    }

    if (msg.env_sensors !== undefined) {
      resolved.env_sensors = new Array(msg.env_sensors.length);
      for (let i = 0; i < resolved.env_sensors.length; ++i) {
        resolved.env_sensors[i] = EnvSensor.Resolve(msg.env_sensors[i]);
      }
    }
    else {
      resolved.env_sensors = []
    }

    if (msg.imu !== undefined) {
      resolved.imu = sensor_msgs.msg.Imu.Resolve(msg.imu)
    }
    else {
      resolved.imu = new sensor_msgs.msg.Imu()
    }

    if (msg.imu_local_transform !== undefined) {
      resolved.imu_local_transform = geometry_msgs.msg.Transform.Resolve(msg.imu_local_transform)
    }
    else {
      resolved.imu_local_transform = new geometry_msgs.msg.Transform()
    }

    if (msg.landmarks !== undefined) {
      resolved.landmarks = new Array(msg.landmarks.length);
      for (let i = 0; i < resolved.landmarks.length; ++i) {
        resolved.landmarks[i] = LandmarkDetection.Resolve(msg.landmarks[i]);
      }
    }
    else {
      resolved.landmarks = []
    }

    if (msg.ground_truth_pose !== undefined) {
      resolved.ground_truth_pose = geometry_msgs.msg.Pose.Resolve(msg.ground_truth_pose)
    }
    else {
      resolved.ground_truth_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.gps !== undefined) {
      resolved.gps = GPS.Resolve(msg.gps)
    }
    else {
      resolved.gps = new GPS()
    }

    return resolved;
    }
};

module.exports = SensorData;
