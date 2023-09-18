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

class CleanupLocalGridsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radius = null;
      this.filter_scans = null;
    }
    else {
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0;
      }
      if (initObj.hasOwnProperty('filter_scans')) {
        this.filter_scans = initObj.filter_scans
      }
      else {
        this.filter_scans = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CleanupLocalGridsRequest
    // Serialize message field [radius]
    bufferOffset = _serializer.int32(obj.radius, buffer, bufferOffset);
    // Serialize message field [filter_scans]
    bufferOffset = _serializer.bool(obj.filter_scans, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CleanupLocalGridsRequest
    let len;
    let data = new CleanupLocalGridsRequest(null);
    // Deserialize message field [radius]
    data.radius = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [filter_scans]
    data.filter_scans = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/CleanupLocalGridsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7e9883a6b75c0ecc1bb1c33f3332f61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  Cleanup local grids service
    # 
    #     Clear empty space from local occupancy grids 
    #     (and laser scans) based on the current optimized global 2d grid map.
    #     If the map needs to be regenerated in the future (e.g., when
    #     we re-use the map in SLAM mode), removed obstacles won't reappear.
    #     Use this with care and only when you know that the map doesn't have errors, 
    #     otherwise some real obstacles/walls may be cleared if there is too much 
    #     drift in the map.
    #
    
    # Radius in cells around empty cell without obstacles to clear underlying obstacles, default 1 cell if not set.
    int32 radius
    
    # Filter also the scans, default false if not set.
    # The filtered laser scans will be used for localization,
    # so if dynamic obstacles have been removed, localization won't try to
    # match them anymore. Filtering the laser scans cannot be reverted, 
    # but grids can (see DatabaseViewer->Edit menu).
    bool filter_scans
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CleanupLocalGridsRequest(null);
    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0
    }

    if (msg.filter_scans !== undefined) {
      resolved.filter_scans = msg.filter_scans;
    }
    else {
      resolved.filter_scans = false
    }

    return resolved;
    }
};

class CleanupLocalGridsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modified = null;
    }
    else {
      if (initObj.hasOwnProperty('modified')) {
        this.modified = initObj.modified
      }
      else {
        this.modified = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CleanupLocalGridsResponse
    // Serialize message field [modified]
    bufferOffset = _serializer.int32(obj.modified, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CleanupLocalGridsResponse
    let len;
    let data = new CleanupLocalGridsResponse(null);
    // Deserialize message field [modified]
    data.modified = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/CleanupLocalGridsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0079be4fbca49cb5090f065d768dbb2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # return the number of grids or scans modified, -1 if there is an error
    int32 modified
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CleanupLocalGridsResponse(null);
    if (msg.modified !== undefined) {
      resolved.modified = msg.modified;
    }
    else {
      resolved.modified = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: CleanupLocalGridsRequest,
  Response: CleanupLocalGridsResponse,
  md5sum() { return '9b90cbbb6fac56a143df9416b6e1fa37'; },
  datatype() { return 'rtabmap_msgs/CleanupLocalGrids'; }
};
