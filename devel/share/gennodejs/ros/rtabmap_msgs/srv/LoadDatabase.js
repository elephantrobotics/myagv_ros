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

class LoadDatabaseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.database_path = null;
      this.clear = null;
    }
    else {
      if (initObj.hasOwnProperty('database_path')) {
        this.database_path = initObj.database_path
      }
      else {
        this.database_path = '';
      }
      if (initObj.hasOwnProperty('clear')) {
        this.clear = initObj.clear
      }
      else {
        this.clear = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadDatabaseRequest
    // Serialize message field [database_path]
    bufferOffset = _serializer.string(obj.database_path, buffer, bufferOffset);
    // Serialize message field [clear]
    bufferOffset = _serializer.bool(obj.clear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadDatabaseRequest
    let len;
    let data = new LoadDatabaseRequest(null);
    // Deserialize message field [database_path]
    data.database_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [clear]
    data.clear = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.database_path);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/LoadDatabaseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '686abf12c0ee22118c7e5fcc29bcdabe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    
    # Local database path on which rtabmap is running.
    # If the path doesn't exist, a new database will be created.
    string database_path
    
    # If the database already exists, data will be cleared if true.
    bool clear
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadDatabaseRequest(null);
    if (msg.database_path !== undefined) {
      resolved.database_path = msg.database_path;
    }
    else {
      resolved.database_path = ''
    }

    if (msg.clear !== undefined) {
      resolved.clear = msg.clear;
    }
    else {
      resolved.clear = false
    }

    return resolved;
    }
};

class LoadDatabaseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoadDatabaseResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoadDatabaseResponse
    let len;
    let data = new LoadDatabaseResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/LoadDatabaseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response, return false on rtabmap initialization failure.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoadDatabaseResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: LoadDatabaseRequest,
  Response: LoadDatabaseResponse,
  md5sum() { return '686abf12c0ee22118c7e5fcc29bcdabe'; },
  datatype() { return 'rtabmap_msgs/LoadDatabase'; }
};
