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


//-----------------------------------------------------------

class PublishMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.global = null;
      this.optimized = null;
      this.graphOnly = null;
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
      if (initObj.hasOwnProperty('graphOnly')) {
        this.graphOnly = initObj.graphOnly
      }
      else {
        this.graphOnly = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PublishMapRequest
    // Serialize message field [global]
    bufferOffset = _serializer.bool(obj.global, buffer, bufferOffset);
    // Serialize message field [optimized]
    bufferOffset = _serializer.bool(obj.optimized, buffer, bufferOffset);
    // Serialize message field [graphOnly]
    bufferOffset = _serializer.bool(obj.graphOnly, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublishMapRequest
    let len;
    let data = new PublishMapRequest(null);
    // Deserialize message field [global]
    data.global = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [optimized]
    data.optimized = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [graphOnly]
    data.graphOnly = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/PublishMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6213f9f13cced23f4d224b22f59d839c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    bool global
    bool optimized
    bool graphOnly
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PublishMapRequest(null);
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

    if (msg.graphOnly !== undefined) {
      resolved.graphOnly = msg.graphOnly;
    }
    else {
      resolved.graphOnly = false
    }

    return resolved;
    }
};

class PublishMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PublishMapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublishMapResponse
    let len;
    let data = new PublishMapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/PublishMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PublishMapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: PublishMapRequest,
  Response: PublishMapResponse,
  md5sum() { return '6213f9f13cced23f4d224b22f59d839c'; },
  datatype() { return 'rtabmap_msgs/PublishMap'; }
};
