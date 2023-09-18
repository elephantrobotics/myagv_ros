// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let MapData = require('../msg/MapData.js');

//-----------------------------------------------------------

class GetMap2Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.global = null;
      this.optimized = null;
      this.with_images = null;
      this.with_scans = null;
      this.with_user_data = null;
      this.with_grids = null;
      this.with_words = null;
      this.with_global_descriptors = null;
    }
    else {
      if (initObj.hasOwnProperty('global')) {
        this.global = initObj.global
      }
      else {
        this.global = false;
      }
      if (initObj.hasOwnProperty('optimized')) {
        this.optimized = initObj.optimized
      }
      else {
        this.optimized = false;
      }
      if (initObj.hasOwnProperty('with_images')) {
        this.with_images = initObj.with_images
      }
      else {
        this.with_images = false;
      }
      if (initObj.hasOwnProperty('with_scans')) {
        this.with_scans = initObj.with_scans
      }
      else {
        this.with_scans = false;
      }
      if (initObj.hasOwnProperty('with_user_data')) {
        this.with_user_data = initObj.with_user_data
      }
      else {
        this.with_user_data = false;
      }
      if (initObj.hasOwnProperty('with_grids')) {
        this.with_grids = initObj.with_grids
      }
      else {
        this.with_grids = false;
      }
      if (initObj.hasOwnProperty('with_words')) {
        this.with_words = initObj.with_words
      }
      else {
        this.with_words = false;
      }
      if (initObj.hasOwnProperty('with_global_descriptors')) {
        this.with_global_descriptors = initObj.with_global_descriptors
      }
      else {
        this.with_global_descriptors = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMap2Request
    // Serialize message field [global]
    bufferOffset = _serializer.bool(obj.global, buffer, bufferOffset);
    // Serialize message field [optimized]
    bufferOffset = _serializer.bool(obj.optimized, buffer, bufferOffset);
    // Serialize message field [with_images]
    bufferOffset = _serializer.bool(obj.with_images, buffer, bufferOffset);
    // Serialize message field [with_scans]
    bufferOffset = _serializer.bool(obj.with_scans, buffer, bufferOffset);
    // Serialize message field [with_user_data]
    bufferOffset = _serializer.bool(obj.with_user_data, buffer, bufferOffset);
    // Serialize message field [with_grids]
    bufferOffset = _serializer.bool(obj.with_grids, buffer, bufferOffset);
    // Serialize message field [with_words]
    bufferOffset = _serializer.bool(obj.with_words, buffer, bufferOffset);
    // Serialize message field [with_global_descriptors]
    bufferOffset = _serializer.bool(obj.with_global_descriptors, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMap2Request
    let len;
    let data = new GetMap2Request(null);
    // Deserialize message field [global]
    data.global = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [optimized]
    data.optimized = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [with_images]
    data.with_images = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [with_scans]
    data.with_scans = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [with_user_data]
    data.with_user_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [with_grids]
    data.with_grids = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [with_words]
    data.with_words = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [with_global_descriptors]
    data.with_global_descriptors = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/GetMap2Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c99a44d248df7f406229ae2372dab2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    bool global
    bool optimized
    bool with_images
    bool with_scans
    bool with_user_data
    bool with_grids
    bool with_words
    bool with_global_descriptors
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMap2Request(null);
    if (msg.global !== undefined) {
      resolved.global = msg.global;
    }
    else {
      resolved.global = false
    }

    if (msg.optimized !== undefined) {
      resolved.optimized = msg.optimized;
    }
    else {
      resolved.optimized = false
    }

    if (msg.with_images !== undefined) {
      resolved.with_images = msg.with_images;
    }
    else {
      resolved.with_images = false
    }

    if (msg.with_scans !== undefined) {
      resolved.with_scans = msg.with_scans;
    }
    else {
      resolved.with_scans = false
    }

    if (msg.with_user_data !== undefined) {
      resolved.with_user_data = msg.with_user_data;
    }
    else {
      resolved.with_user_data = false
    }

    if (msg.with_grids !== undefined) {
      resolved.with_grids = msg.with_grids;
    }
    else {
      resolved.with_grids = false
    }

    if (msg.with_words !== undefined) {
      resolved.with_words = msg.with_words;
    }
    else {
      resolved.with_words = false
    }

    if (msg.with_global_descriptors !== undefined) {
      resolved.with_global_descriptors = msg.with_global_descriptors;
    }
    else {
      resolved.with_global_descriptors = false
    }

    return resolved;
    }
};

class GetMap2Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new MapData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMap2Response
    // Serialize message field [data]
    bufferOffset = MapData.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMap2Response
    let len;
    let data = new GetMap2Response(null);
    // Deserialize message field [data]
    data.data = MapData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapData.getMessageSize(object.data);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/GetMap2Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8904e9de7a55d5e843050af01d4f6b96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    MapData data
    
    
    ================================================================================
    MSG: rtabmap_msgs/MapData
    
    Header header
    
    ##################
    # Optimized graph
    ##################
    MapGraph graph
    
    ##################
    # Graph data
    ##################
    NodeData[] nodes
    
    
    
    
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
    MSG: rtabmap_msgs/MapGraph
    
    Header header
    
    ##
    # /map to /odom transform
    # Always identity when the graph is optimized from the latest pose.
    ##
    geometry_msgs/Transform mapToOdom
    
    # The poses
    int32[] posesId
    geometry_msgs/Pose[] poses
    
    # The links
    Link[] links
    
    
    
    
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
    MSG: rtabmap_msgs/Link
    #class rtabmap::Link
    #{
    #   int from;
    #   int to;
    #   Type type;
    #   Transform transform;
    #   cv::Mat(6,6,CV_64FC1) information;
    #}
    
    int32 fromId
    int32 toId
    int32 type
    geometry_msgs/Transform transform
    float64[36] information
    ================================================================================
    MSG: rtabmap_msgs/NodeData
    
    int32 id
    int32 mapId
    int32 weight
    float64 stamp
    string label
    
    # Pose from odometry not corrected
    geometry_msgs/Pose pose
    
    # Ground truth (optional)
    geometry_msgs/Pose groundTruthPose
    
    # GPS (optional)
    GPS gps
    
    # compressed image in /camera_link frame
    # use rtabmap::util3d::uncompressImage() from "rtabmap/core/util3d.h"
    uint8[] image
    
    # compressed depth image in /camera_link frame
    # use rtabmap::util3d::uncompressImage() from "rtabmap/core/util3d.h"
    uint8[] depth
    
    # Camera models
    float32[] fx
    float32[] fy
    float32[] cx
    float32[] cy
    float32[] width
    float32[] height
    float32[] baseline
    # local transform (/base_link -> /camera_link)
    geometry_msgs/Transform[] localTransform
    
    # compressed 2D or 3D laser scan
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] laserScan
    int32 laserScanMaxPts
    float32 laserScanMaxRange
    int32 laserScanFormat
    # local transform (/base_link -> /base_laser)
    geometry_msgs/Transform laserScanLocalTransform
    
    # compressed user data
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] userData
    
    # compressed occupancy grid
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] grid_ground
    uint8[] grid_obstacles
    uint8[] grid_empty_cells
    float32 grid_cell_size
    Point3f grid_view_point
    
    # std::multimap<wordId, index>
    # std::vector<cv::Keypoint>
    # std::vector<cv::Point3f>
    int32[] wordIdKeys
    int32[] wordIdValues
    KeyPoint[] wordKpts
    Point3f[] wordPts
    # compressed descriptors
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    uint8[] wordDescriptors
    
    GlobalDescriptor[] globalDescriptors
    
    EnvSensor[] env_sensors
    
    ================================================================================
    MSG: rtabmap_msgs/GPS
    
    float64 stamp      # in seconds
    float64 longitude  # DD format
    float64 latitude   # DD format
    float64 altitude   # in meters
    float64 error      # in meters
    float64 bearing    # North 0->360 deg
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMap2Response(null);
    if (msg.data !== undefined) {
      resolved.data = MapData.Resolve(msg.data)
    }
    else {
      resolved.data = new MapData()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMap2Request,
  Response: GetMap2Response,
  md5sum() { return '07d04226ea1aa896bb51266a21c4b414'; },
  datatype() { return 'rtabmap_msgs/GetMap2'; }
};
