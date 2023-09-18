// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GPS = require('./GPS.js');
let Point3f = require('./Point3f.js');
let KeyPoint = require('./KeyPoint.js');
let GlobalDescriptor = require('./GlobalDescriptor.js');
let EnvSensor = require('./EnvSensor.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NodeData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.mapId = null;
      this.weight = null;
      this.stamp = null;
      this.label = null;
      this.pose = null;
      this.groundTruthPose = null;
      this.gps = null;
      this.image = null;
      this.depth = null;
      this.fx = null;
      this.fy = null;
      this.cx = null;
      this.cy = null;
      this.width = null;
      this.height = null;
      this.baseline = null;
      this.localTransform = null;
      this.laserScan = null;
      this.laserScanMaxPts = null;
      this.laserScanMaxRange = null;
      this.laserScanFormat = null;
      this.laserScanLocalTransform = null;
      this.userData = null;
      this.grid_ground = null;
      this.grid_obstacles = null;
      this.grid_empty_cells = null;
      this.grid_cell_size = null;
      this.grid_view_point = null;
      this.wordIdKeys = null;
      this.wordIdValues = null;
      this.wordKpts = null;
      this.wordPts = null;
      this.wordDescriptors = null;
      this.globalDescriptors = null;
      this.env_sensors = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('mapId')) {
        this.mapId = initObj.mapId
      }
      else {
        this.mapId = 0;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0.0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('groundTruthPose')) {
        this.groundTruthPose = initObj.groundTruthPose
      }
      else {
        this.groundTruthPose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('gps')) {
        this.gps = initObj.gps
      }
      else {
        this.gps = new GPS();
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = [];
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = [];
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = [];
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = [];
      }
      if (initObj.hasOwnProperty('cx')) {
        this.cx = initObj.cx
      }
      else {
        this.cx = [];
      }
      if (initObj.hasOwnProperty('cy')) {
        this.cy = initObj.cy
      }
      else {
        this.cy = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = [];
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = [];
      }
      if (initObj.hasOwnProperty('baseline')) {
        this.baseline = initObj.baseline
      }
      else {
        this.baseline = [];
      }
      if (initObj.hasOwnProperty('localTransform')) {
        this.localTransform = initObj.localTransform
      }
      else {
        this.localTransform = [];
      }
      if (initObj.hasOwnProperty('laserScan')) {
        this.laserScan = initObj.laserScan
      }
      else {
        this.laserScan = [];
      }
      if (initObj.hasOwnProperty('laserScanMaxPts')) {
        this.laserScanMaxPts = initObj.laserScanMaxPts
      }
      else {
        this.laserScanMaxPts = 0;
      }
      if (initObj.hasOwnProperty('laserScanMaxRange')) {
        this.laserScanMaxRange = initObj.laserScanMaxRange
      }
      else {
        this.laserScanMaxRange = 0.0;
      }
      if (initObj.hasOwnProperty('laserScanFormat')) {
        this.laserScanFormat = initObj.laserScanFormat
      }
      else {
        this.laserScanFormat = 0;
      }
      if (initObj.hasOwnProperty('laserScanLocalTransform')) {
        this.laserScanLocalTransform = initObj.laserScanLocalTransform
      }
      else {
        this.laserScanLocalTransform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('userData')) {
        this.userData = initObj.userData
      }
      else {
        this.userData = [];
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
      if (initObj.hasOwnProperty('wordIdKeys')) {
        this.wordIdKeys = initObj.wordIdKeys
      }
      else {
        this.wordIdKeys = [];
      }
      if (initObj.hasOwnProperty('wordIdValues')) {
        this.wordIdValues = initObj.wordIdValues
      }
      else {
        this.wordIdValues = [];
      }
      if (initObj.hasOwnProperty('wordKpts')) {
        this.wordKpts = initObj.wordKpts
      }
      else {
        this.wordKpts = [];
      }
      if (initObj.hasOwnProperty('wordPts')) {
        this.wordPts = initObj.wordPts
      }
      else {
        this.wordPts = [];
      }
      if (initObj.hasOwnProperty('wordDescriptors')) {
        this.wordDescriptors = initObj.wordDescriptors
      }
      else {
        this.wordDescriptors = [];
      }
      if (initObj.hasOwnProperty('globalDescriptors')) {
        this.globalDescriptors = initObj.globalDescriptors
      }
      else {
        this.globalDescriptors = [];
      }
      if (initObj.hasOwnProperty('env_sensors')) {
        this.env_sensors = initObj.env_sensors
      }
      else {
        this.env_sensors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeData
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [mapId]
    bufferOffset = _serializer.int32(obj.mapId, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.int32(obj.weight, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.float64(obj.stamp, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [groundTruthPose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.groundTruthPose, buffer, bufferOffset);
    // Serialize message field [gps]
    bufferOffset = GPS.serialize(obj.gps, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = _arraySerializer.uint8(obj.image, buffer, bufferOffset, null);
    // Serialize message field [depth]
    bufferOffset = _arraySerializer.uint8(obj.depth, buffer, bufferOffset, null);
    // Serialize message field [fx]
    bufferOffset = _arraySerializer.float32(obj.fx, buffer, bufferOffset, null);
    // Serialize message field [fy]
    bufferOffset = _arraySerializer.float32(obj.fy, buffer, bufferOffset, null);
    // Serialize message field [cx]
    bufferOffset = _arraySerializer.float32(obj.cx, buffer, bufferOffset, null);
    // Serialize message field [cy]
    bufferOffset = _arraySerializer.float32(obj.cy, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _arraySerializer.float32(obj.width, buffer, bufferOffset, null);
    // Serialize message field [height]
    bufferOffset = _arraySerializer.float32(obj.height, buffer, bufferOffset, null);
    // Serialize message field [baseline]
    bufferOffset = _arraySerializer.float32(obj.baseline, buffer, bufferOffset, null);
    // Serialize message field [localTransform]
    // Serialize the length for message field [localTransform]
    bufferOffset = _serializer.uint32(obj.localTransform.length, buffer, bufferOffset);
    obj.localTransform.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Transform.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [laserScan]
    bufferOffset = _arraySerializer.uint8(obj.laserScan, buffer, bufferOffset, null);
    // Serialize message field [laserScanMaxPts]
    bufferOffset = _serializer.int32(obj.laserScanMaxPts, buffer, bufferOffset);
    // Serialize message field [laserScanMaxRange]
    bufferOffset = _serializer.float32(obj.laserScanMaxRange, buffer, bufferOffset);
    // Serialize message field [laserScanFormat]
    bufferOffset = _serializer.int32(obj.laserScanFormat, buffer, bufferOffset);
    // Serialize message field [laserScanLocalTransform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.laserScanLocalTransform, buffer, bufferOffset);
    // Serialize message field [userData]
    bufferOffset = _arraySerializer.uint8(obj.userData, buffer, bufferOffset, null);
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
    // Serialize message field [wordIdKeys]
    bufferOffset = _arraySerializer.int32(obj.wordIdKeys, buffer, bufferOffset, null);
    // Serialize message field [wordIdValues]
    bufferOffset = _arraySerializer.int32(obj.wordIdValues, buffer, bufferOffset, null);
    // Serialize message field [wordKpts]
    // Serialize the length for message field [wordKpts]
    bufferOffset = _serializer.uint32(obj.wordKpts.length, buffer, bufferOffset);
    obj.wordKpts.forEach((val) => {
      bufferOffset = KeyPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [wordPts]
    // Serialize the length for message field [wordPts]
    bufferOffset = _serializer.uint32(obj.wordPts.length, buffer, bufferOffset);
    obj.wordPts.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [wordDescriptors]
    bufferOffset = _arraySerializer.uint8(obj.wordDescriptors, buffer, bufferOffset, null);
    // Serialize message field [globalDescriptors]
    // Serialize the length for message field [globalDescriptors]
    bufferOffset = _serializer.uint32(obj.globalDescriptors.length, buffer, bufferOffset);
    obj.globalDescriptors.forEach((val) => {
      bufferOffset = GlobalDescriptor.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [env_sensors]
    // Serialize the length for message field [env_sensors]
    bufferOffset = _serializer.uint32(obj.env_sensors.length, buffer, bufferOffset);
    obj.env_sensors.forEach((val) => {
      bufferOffset = EnvSensor.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeData
    let len;
    let data = new NodeData(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mapId]
    data.mapId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [groundTruthPose]
    data.groundTruthPose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps]
    data.gps = GPS.deserialize(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [depth]
    data.depth = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [fx]
    data.fx = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [fy]
    data.fy = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cx]
    data.cx = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cy]
    data.cy = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [height]
    data.height = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [baseline]
    data.baseline = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [localTransform]
    // Deserialize array length for message field [localTransform]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.localTransform = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.localTransform[i] = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [laserScan]
    data.laserScan = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [laserScanMaxPts]
    data.laserScanMaxPts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [laserScanMaxRange]
    data.laserScanMaxRange = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [laserScanFormat]
    data.laserScanFormat = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [laserScanLocalTransform]
    data.laserScanLocalTransform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [userData]
    data.userData = _arrayDeserializer.uint8(buffer, bufferOffset, null)
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
    // Deserialize message field [wordIdKeys]
    data.wordIdKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wordIdValues]
    data.wordIdValues = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wordKpts]
    // Deserialize array length for message field [wordKpts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wordKpts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wordKpts[i] = KeyPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wordPts]
    // Deserialize array length for message field [wordPts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wordPts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wordPts[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wordDescriptors]
    data.wordDescriptors = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [globalDescriptors]
    // Deserialize array length for message field [globalDescriptors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.globalDescriptors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.globalDescriptors[i] = GlobalDescriptor.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [env_sensors]
    // Deserialize array length for message field [env_sensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.env_sensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.env_sensors[i] = EnvSensor.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    length += object.image.length;
    length += object.depth.length;
    length += 4 * object.fx.length;
    length += 4 * object.fy.length;
    length += 4 * object.cx.length;
    length += 4 * object.cy.length;
    length += 4 * object.width.length;
    length += 4 * object.height.length;
    length += 4 * object.baseline.length;
    length += 56 * object.localTransform.length;
    length += object.laserScan.length;
    length += object.userData.length;
    length += object.grid_ground.length;
    length += object.grid_obstacles.length;
    length += object.grid_empty_cells.length;
    length += 4 * object.wordIdKeys.length;
    length += 4 * object.wordIdValues.length;
    length += 28 * object.wordKpts.length;
    length += 12 * object.wordPts.length;
    length += object.wordDescriptors.length;
    object.globalDescriptors.forEach((val) => {
      length += GlobalDescriptor.getMessageSize(val);
    });
    object.env_sensors.forEach((val) => {
      length += EnvSensor.getMessageSize(val);
    });
    return length + 356;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/NodeData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbf7b81adbf2e3b56c6bae97e128cd38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: rtabmap_msgs/GPS
    
    float64 stamp      # in seconds
    float64 longitude  # DD format
    float64 latitude   # DD format
    float64 altitude   # in meters
    float64 error      # in meters
    float64 bearing    # North 0->360 deg
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
    const resolved = new NodeData(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.mapId !== undefined) {
      resolved.mapId = msg.mapId;
    }
    else {
      resolved.mapId = 0
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0.0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.groundTruthPose !== undefined) {
      resolved.groundTruthPose = geometry_msgs.msg.Pose.Resolve(msg.groundTruthPose)
    }
    else {
      resolved.groundTruthPose = new geometry_msgs.msg.Pose()
    }

    if (msg.gps !== undefined) {
      resolved.gps = GPS.Resolve(msg.gps)
    }
    else {
      resolved.gps = new GPS()
    }

    if (msg.image !== undefined) {
      resolved.image = msg.image;
    }
    else {
      resolved.image = []
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = []
    }

    if (msg.fx !== undefined) {
      resolved.fx = msg.fx;
    }
    else {
      resolved.fx = []
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = []
    }

    if (msg.cx !== undefined) {
      resolved.cx = msg.cx;
    }
    else {
      resolved.cx = []
    }

    if (msg.cy !== undefined) {
      resolved.cy = msg.cy;
    }
    else {
      resolved.cy = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = []
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = []
    }

    if (msg.baseline !== undefined) {
      resolved.baseline = msg.baseline;
    }
    else {
      resolved.baseline = []
    }

    if (msg.localTransform !== undefined) {
      resolved.localTransform = new Array(msg.localTransform.length);
      for (let i = 0; i < resolved.localTransform.length; ++i) {
        resolved.localTransform[i] = geometry_msgs.msg.Transform.Resolve(msg.localTransform[i]);
      }
    }
    else {
      resolved.localTransform = []
    }

    if (msg.laserScan !== undefined) {
      resolved.laserScan = msg.laserScan;
    }
    else {
      resolved.laserScan = []
    }

    if (msg.laserScanMaxPts !== undefined) {
      resolved.laserScanMaxPts = msg.laserScanMaxPts;
    }
    else {
      resolved.laserScanMaxPts = 0
    }

    if (msg.laserScanMaxRange !== undefined) {
      resolved.laserScanMaxRange = msg.laserScanMaxRange;
    }
    else {
      resolved.laserScanMaxRange = 0.0
    }

    if (msg.laserScanFormat !== undefined) {
      resolved.laserScanFormat = msg.laserScanFormat;
    }
    else {
      resolved.laserScanFormat = 0
    }

    if (msg.laserScanLocalTransform !== undefined) {
      resolved.laserScanLocalTransform = geometry_msgs.msg.Transform.Resolve(msg.laserScanLocalTransform)
    }
    else {
      resolved.laserScanLocalTransform = new geometry_msgs.msg.Transform()
    }

    if (msg.userData !== undefined) {
      resolved.userData = msg.userData;
    }
    else {
      resolved.userData = []
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

    if (msg.wordIdKeys !== undefined) {
      resolved.wordIdKeys = msg.wordIdKeys;
    }
    else {
      resolved.wordIdKeys = []
    }

    if (msg.wordIdValues !== undefined) {
      resolved.wordIdValues = msg.wordIdValues;
    }
    else {
      resolved.wordIdValues = []
    }

    if (msg.wordKpts !== undefined) {
      resolved.wordKpts = new Array(msg.wordKpts.length);
      for (let i = 0; i < resolved.wordKpts.length; ++i) {
        resolved.wordKpts[i] = KeyPoint.Resolve(msg.wordKpts[i]);
      }
    }
    else {
      resolved.wordKpts = []
    }

    if (msg.wordPts !== undefined) {
      resolved.wordPts = new Array(msg.wordPts.length);
      for (let i = 0; i < resolved.wordPts.length; ++i) {
        resolved.wordPts[i] = Point3f.Resolve(msg.wordPts[i]);
      }
    }
    else {
      resolved.wordPts = []
    }

    if (msg.wordDescriptors !== undefined) {
      resolved.wordDescriptors = msg.wordDescriptors;
    }
    else {
      resolved.wordDescriptors = []
    }

    if (msg.globalDescriptors !== undefined) {
      resolved.globalDescriptors = new Array(msg.globalDescriptors.length);
      for (let i = 0; i < resolved.globalDescriptors.length; ++i) {
        resolved.globalDescriptors[i] = GlobalDescriptor.Resolve(msg.globalDescriptors[i]);
      }
    }
    else {
      resolved.globalDescriptors = []
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

    return resolved;
    }
};

module.exports = NodeData;
