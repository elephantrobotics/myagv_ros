// Auto-generated. Do not edit!

// (in-package orbbec_camera.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetCameraParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCameraParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCameraParamsRequest
    let len;
    let data = new GetCameraParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'orbbec_camera/GetCameraParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCameraParamsRequest(null);
    return resolved;
    }
};

class GetCameraParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.l_intr_p = null;
      this.r_intr_p = null;
      this.r2l_r = null;
      this.r2l_t = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('l_intr_p')) {
        this.l_intr_p = initObj.l_intr_p
      }
      else {
        this.l_intr_p = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('r_intr_p')) {
        this.r_intr_p = initObj.r_intr_p
      }
      else {
        this.r_intr_p = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('r2l_r')) {
        this.r2l_r = initObj.r2l_r
      }
      else {
        this.r2l_r = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('r2l_t')) {
        this.r2l_t = initObj.r2l_t
      }
      else {
        this.r2l_t = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCameraParamsResponse
    // Check that the constant length array field [l_intr_p] has the right length
    if (obj.l_intr_p.length !== 4) {
      throw new Error('Unable to serialize array field l_intr_p - length must be 4')
    }
    // Serialize message field [l_intr_p]
    bufferOffset = _arraySerializer.float32(obj.l_intr_p, buffer, bufferOffset, 4);
    // Check that the constant length array field [r_intr_p] has the right length
    if (obj.r_intr_p.length !== 4) {
      throw new Error('Unable to serialize array field r_intr_p - length must be 4')
    }
    // Serialize message field [r_intr_p]
    bufferOffset = _arraySerializer.float32(obj.r_intr_p, buffer, bufferOffset, 4);
    // Check that the constant length array field [r2l_r] has the right length
    if (obj.r2l_r.length !== 9) {
      throw new Error('Unable to serialize array field r2l_r - length must be 9')
    }
    // Serialize message field [r2l_r]
    bufferOffset = _arraySerializer.float32(obj.r2l_r, buffer, bufferOffset, 9);
    // Check that the constant length array field [r2l_t] has the right length
    if (obj.r2l_t.length !== 3) {
      throw new Error('Unable to serialize array field r2l_t - length must be 3')
    }
    // Serialize message field [r2l_t]
    bufferOffset = _arraySerializer.float32(obj.r2l_t, buffer, bufferOffset, 3);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCameraParamsResponse
    let len;
    let data = new GetCameraParamsResponse(null);
    // Deserialize message field [l_intr_p]
    data.l_intr_p = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [r_intr_p]
    data.r_intr_p = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [r2l_r]
    data.r2l_r = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [r2l_t]
    data.r2l_t = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 85;
  }

  static datatype() {
    // Returns string type for a service object
    return 'orbbec_camera/GetCameraParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06621ca772ba4ac96475002c209b1554';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4] l_intr_p
    float32[4] r_intr_p
    float32[9] r2l_r
    float32[3] r2l_t
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCameraParamsResponse(null);
    if (msg.l_intr_p !== undefined) {
      resolved.l_intr_p = msg.l_intr_p;
    }
    else {
      resolved.l_intr_p = new Array(4).fill(0)
    }

    if (msg.r_intr_p !== undefined) {
      resolved.r_intr_p = msg.r_intr_p;
    }
    else {
      resolved.r_intr_p = new Array(4).fill(0)
    }

    if (msg.r2l_r !== undefined) {
      resolved.r2l_r = msg.r2l_r;
    }
    else {
      resolved.r2l_r = new Array(9).fill(0)
    }

    if (msg.r2l_t !== undefined) {
      resolved.r2l_t = msg.r2l_t;
    }
    else {
      resolved.r2l_t = new Array(3).fill(0)
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCameraParamsRequest,
  Response: GetCameraParamsResponse,
  md5sum() { return '06621ca772ba4ac96475002c209b1554'; },
  datatype() { return 'orbbec_camera/GetCameraParams'; }
};
