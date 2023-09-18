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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SetGoalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_id = null;
      this.node_label = null;
      this.frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = 0;
      }
      if (initObj.hasOwnProperty('node_label')) {
        this.node_label = initObj.node_label
      }
      else {
        this.node_label = '';
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGoalRequest
    // Serialize message field [node_id]
    bufferOffset = _serializer.int32(obj.node_id, buffer, bufferOffset);
    // Serialize message field [node_label]
    bufferOffset = _serializer.string(obj.node_label, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGoalRequest
    let len;
    let data = new SetGoalRequest(null);
    // Deserialize message field [node_id]
    data.node_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [node_label]
    data.node_label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.node_label);
    length += _getByteLength(object.frame_id);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/SetGoalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '375ab24253ceefb71e0472c1b972fff4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    
    # Set either node_id or node_label
    int32 node_id
    string node_label
    
    # optional: if not set, the base frame of the robot is used
    string frame_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGoalRequest(null);
    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = 0
    }

    if (msg.node_label !== undefined) {
      resolved.node_label = msg.node_label;
    }
    else {
      resolved.node_label = ''
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    return resolved;
    }
};

class SetGoalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_ids = null;
      this.path_poses = null;
      this.planning_time = null;
    }
    else {
      if (initObj.hasOwnProperty('path_ids')) {
        this.path_ids = initObj.path_ids
      }
      else {
        this.path_ids = [];
      }
      if (initObj.hasOwnProperty('path_poses')) {
        this.path_poses = initObj.path_poses
      }
      else {
        this.path_poses = [];
      }
      if (initObj.hasOwnProperty('planning_time')) {
        this.planning_time = initObj.planning_time
      }
      else {
        this.planning_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGoalResponse
    // Serialize message field [path_ids]
    bufferOffset = _arraySerializer.int32(obj.path_ids, buffer, bufferOffset, null);
    // Serialize message field [path_poses]
    // Serialize the length for message field [path_poses]
    bufferOffset = _serializer.uint32(obj.path_poses.length, buffer, bufferOffset);
    obj.path_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [planning_time]
    bufferOffset = _serializer.float32(obj.planning_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGoalResponse
    let len;
    let data = new SetGoalResponse(null);
    // Deserialize message field [path_ids]
    data.path_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [path_poses]
    // Deserialize array length for message field [path_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [planning_time]
    data.planning_time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.path_ids.length;
    length += 56 * object.path_poses.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/SetGoalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adca6a85ab21f03d516676b74309de28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #response 
    int32[] path_ids
    geometry_msgs/Pose[] path_poses
    float32 planning_time
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGoalResponse(null);
    if (msg.path_ids !== undefined) {
      resolved.path_ids = msg.path_ids;
    }
    else {
      resolved.path_ids = []
    }

    if (msg.path_poses !== undefined) {
      resolved.path_poses = new Array(msg.path_poses.length);
      for (let i = 0; i < resolved.path_poses.length; ++i) {
        resolved.path_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.path_poses[i]);
      }
    }
    else {
      resolved.path_poses = []
    }

    if (msg.planning_time !== undefined) {
      resolved.planning_time = msg.planning_time;
    }
    else {
      resolved.planning_time = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetGoalRequest,
  Response: SetGoalResponse,
  md5sum() { return '9ab4a370e8733a44f7bff8c581f9c5bf'; },
  datatype() { return 'rtabmap_msgs/SetGoal'; }
};
