// Auto-generated. Do not edit!

// (in-package astra_camera.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DeviceInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.vid = null;
      this.pid = null;
      this.serial_number = null;
      this.firmware_version = null;
      this.supported_min_sdk_version = null;
      this.hardware_version = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('vid')) {
        this.vid = initObj.vid
      }
      else {
        this.vid = 0;
      }
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = 0;
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = '';
      }
      if (initObj.hasOwnProperty('firmware_version')) {
        this.firmware_version = initObj.firmware_version
      }
      else {
        this.firmware_version = '';
      }
      if (initObj.hasOwnProperty('supported_min_sdk_version')) {
        this.supported_min_sdk_version = initObj.supported_min_sdk_version
      }
      else {
        this.supported_min_sdk_version = '';
      }
      if (initObj.hasOwnProperty('hardware_version')) {
        this.hardware_version = initObj.hardware_version
      }
      else {
        this.hardware_version = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeviceInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [vid]
    bufferOffset = _serializer.int32(obj.vid, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = _serializer.int32(obj.pid, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.string(obj.serial_number, buffer, bufferOffset);
    // Serialize message field [firmware_version]
    bufferOffset = _serializer.string(obj.firmware_version, buffer, bufferOffset);
    // Serialize message field [supported_min_sdk_version]
    bufferOffset = _serializer.string(obj.supported_min_sdk_version, buffer, bufferOffset);
    // Serialize message field [hardware_version]
    bufferOffset = _serializer.string(obj.hardware_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeviceInfo
    let len;
    let data = new DeviceInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vid]
    data.vid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pid]
    data.pid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [firmware_version]
    data.firmware_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [supported_min_sdk_version]
    data.supported_min_sdk_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hardware_version]
    data.hardware_version = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.name);
    length += _getByteLength(object.serial_number);
    length += _getByteLength(object.firmware_version);
    length += _getByteLength(object.supported_min_sdk_version);
    length += _getByteLength(object.hardware_version);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'astra_camera/DeviceInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8aabac6d632dd2641eb4f5942464a66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string name
    int32 vid
    int32 pid
    string serial_number
    string firmware_version
    string supported_min_sdk_version
    string hardware_version
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeviceInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.vid !== undefined) {
      resolved.vid = msg.vid;
    }
    else {
      resolved.vid = 0
    }

    if (msg.pid !== undefined) {
      resolved.pid = msg.pid;
    }
    else {
      resolved.pid = 0
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = ''
    }

    if (msg.firmware_version !== undefined) {
      resolved.firmware_version = msg.firmware_version;
    }
    else {
      resolved.firmware_version = ''
    }

    if (msg.supported_min_sdk_version !== undefined) {
      resolved.supported_min_sdk_version = msg.supported_min_sdk_version;
    }
    else {
      resolved.supported_min_sdk_version = ''
    }

    if (msg.hardware_version !== undefined) {
      resolved.hardware_version = msg.hardware_version;
    }
    else {
      resolved.hardware_version = ''
    }

    return resolved;
    }
};

module.exports = DeviceInfo;
