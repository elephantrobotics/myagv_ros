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

class DetectMoreLoopClosuresRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cluster_radius_max = null;
      this.cluster_radius_min = null;
      this.cluster_angle = null;
      this.iterations = null;
      this.intra_only = null;
      this.inter_only = null;
    }
    else {
      if (initObj.hasOwnProperty('cluster_radius_max')) {
        this.cluster_radius_max = initObj.cluster_radius_max
      }
      else {
        this.cluster_radius_max = 0.0;
      }
      if (initObj.hasOwnProperty('cluster_radius_min')) {
        this.cluster_radius_min = initObj.cluster_radius_min
      }
      else {
        this.cluster_radius_min = 0.0;
      }
      if (initObj.hasOwnProperty('cluster_angle')) {
        this.cluster_angle = initObj.cluster_angle
      }
      else {
        this.cluster_angle = 0.0;
      }
      if (initObj.hasOwnProperty('iterations')) {
        this.iterations = initObj.iterations
      }
      else {
        this.iterations = 0;
      }
      if (initObj.hasOwnProperty('intra_only')) {
        this.intra_only = initObj.intra_only
      }
      else {
        this.intra_only = false;
      }
      if (initObj.hasOwnProperty('inter_only')) {
        this.inter_only = initObj.inter_only
      }
      else {
        this.inter_only = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectMoreLoopClosuresRequest
    // Serialize message field [cluster_radius_max]
    bufferOffset = _serializer.float32(obj.cluster_radius_max, buffer, bufferOffset);
    // Serialize message field [cluster_radius_min]
    bufferOffset = _serializer.float32(obj.cluster_radius_min, buffer, bufferOffset);
    // Serialize message field [cluster_angle]
    bufferOffset = _serializer.float32(obj.cluster_angle, buffer, bufferOffset);
    // Serialize message field [iterations]
    bufferOffset = _serializer.int32(obj.iterations, buffer, bufferOffset);
    // Serialize message field [intra_only]
    bufferOffset = _serializer.bool(obj.intra_only, buffer, bufferOffset);
    // Serialize message field [inter_only]
    bufferOffset = _serializer.bool(obj.inter_only, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectMoreLoopClosuresRequest
    let len;
    let data = new DetectMoreLoopClosuresRequest(null);
    // Deserialize message field [cluster_radius_max]
    data.cluster_radius_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cluster_radius_min]
    data.cluster_radius_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cluster_angle]
    data.cluster_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [iterations]
    data.iterations = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [intra_only]
    data.intra_only = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [inter_only]
    data.inter_only = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/DetectMoreLoopClosuresRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df5cfe58cb7487b0d93ed1614efab4a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Detect more loop closures service
    #
    #     Based on the current optimized graph, 
    #     this process will try to find more nodes corresponding with each 
    #     other, and thus finding more loop closures to add to graph.
    # 
    
    # Cluster radius (m),     default 1 m if not set
    float32 cluster_radius_max
    
    # Cluster radius min (m), default 0 m if not set
    float32 cluster_radius_min
    
    # Cluster angle (deg),    default 0 deg if not set
    float32 cluster_angle
    
    # Iterations,             default 1 if not set
    int32 iterations
    
    # Add only intra session loop closures
    bool intra_only
    
    # Add only inter session loop closures
    bool inter_only
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectMoreLoopClosuresRequest(null);
    if (msg.cluster_radius_max !== undefined) {
      resolved.cluster_radius_max = msg.cluster_radius_max;
    }
    else {
      resolved.cluster_radius_max = 0.0
    }

    if (msg.cluster_radius_min !== undefined) {
      resolved.cluster_radius_min = msg.cluster_radius_min;
    }
    else {
      resolved.cluster_radius_min = 0.0
    }

    if (msg.cluster_angle !== undefined) {
      resolved.cluster_angle = msg.cluster_angle;
    }
    else {
      resolved.cluster_angle = 0.0
    }

    if (msg.iterations !== undefined) {
      resolved.iterations = msg.iterations;
    }
    else {
      resolved.iterations = 0
    }

    if (msg.intra_only !== undefined) {
      resolved.intra_only = msg.intra_only;
    }
    else {
      resolved.intra_only = false
    }

    if (msg.inter_only !== undefined) {
      resolved.inter_only = msg.inter_only;
    }
    else {
      resolved.inter_only = false
    }

    return resolved;
    }
};

class DetectMoreLoopClosuresResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detected = null;
    }
    else {
      if (initObj.hasOwnProperty('detected')) {
        this.detected = initObj.detected
      }
      else {
        this.detected = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectMoreLoopClosuresResponse
    // Serialize message field [detected]
    bufferOffset = _serializer.int32(obj.detected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectMoreLoopClosuresResponse
    let len;
    let data = new DetectMoreLoopClosuresResponse(null);
    // Deserialize message field [detected]
    data.detected = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/DetectMoreLoopClosuresResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b915f91311c8f5d6b235ceb818d53f80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # return the number of loop closures detected, or -1 if it failed.
    int32 detected
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectMoreLoopClosuresResponse(null);
    if (msg.detected !== undefined) {
      resolved.detected = msg.detected;
    }
    else {
      resolved.detected = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectMoreLoopClosuresRequest,
  Response: DetectMoreLoopClosuresResponse,
  md5sum() { return '4d201f0476beb2d12b70b64edae8edab'; },
  datatype() { return 'rtabmap_msgs/DetectMoreLoopClosures'; }
};
