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

class GlobalBundleAdjustmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.iterations = null;
      this.pixel_variance = null;
      this.voc_matches = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('iterations')) {
        this.iterations = initObj.iterations
      }
      else {
        this.iterations = 0;
      }
      if (initObj.hasOwnProperty('pixel_variance')) {
        this.pixel_variance = initObj.pixel_variance
      }
      else {
        this.pixel_variance = 0.0;
      }
      if (initObj.hasOwnProperty('voc_matches')) {
        this.voc_matches = initObj.voc_matches
      }
      else {
        this.voc_matches = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalBundleAdjustmentRequest
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [iterations]
    bufferOffset = _serializer.int32(obj.iterations, buffer, bufferOffset);
    // Serialize message field [pixel_variance]
    bufferOffset = _serializer.float32(obj.pixel_variance, buffer, bufferOffset);
    // Serialize message field [voc_matches]
    bufferOffset = _serializer.bool(obj.voc_matches, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalBundleAdjustmentRequest
    let len;
    let data = new GlobalBundleAdjustmentRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [iterations]
    data.iterations = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pixel_variance]
    data.pixel_variance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [voc_matches]
    data.voc_matches = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/GlobalBundleAdjustmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e1ed640ba9f481fdaa2226734d70674';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Global Bundle Adjustment service
    #
    #       Perform global bundle adjustment. Note that as soon as the map 
    #       is modified again, the graph is re-optimized the standard way (without SBA).
    #       It then makes only sense to use this after a mapping run (and after a call 
    #       to /rtabmap/pause) when you know that the robot will restart in localization 
    #       mode the next time, or at the beginning of the localization session.
    #
    
    # Optimizer type (0=g2o, 1=CVSBA), default 0
    int32 type
    
    # Iterations,        default 0 (use Optimizer/Iterations already loaded in the node)
    int32 iterations
    
    # Pixel variance,    default 0 (use g2o/PixelVariance already loaded in the node)
    float32 pixel_variance
    
    # Use vocabulary matches, default false (rematch all features between frames)
    bool voc_matches
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalBundleAdjustmentRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.iterations !== undefined) {
      resolved.iterations = msg.iterations;
    }
    else {
      resolved.iterations = 0
    }

    if (msg.pixel_variance !== undefined) {
      resolved.pixel_variance = msg.pixel_variance;
    }
    else {
      resolved.pixel_variance = 0.0
    }

    if (msg.voc_matches !== undefined) {
      resolved.voc_matches = msg.voc_matches;
    }
    else {
      resolved.voc_matches = false
    }

    return resolved;
    }
};

class GlobalBundleAdjustmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalBundleAdjustmentResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalBundleAdjustmentResponse
    let len;
    let data = new GlobalBundleAdjustmentResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/GlobalBundleAdjustmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # return false if failure
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalBundleAdjustmentResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: GlobalBundleAdjustmentRequest,
  Response: GlobalBundleAdjustmentResponse,
  md5sum() { return '2e1ed640ba9f481fdaa2226734d70674'; },
  datatype() { return 'rtabmap_msgs/GlobalBundleAdjustment'; }
};
