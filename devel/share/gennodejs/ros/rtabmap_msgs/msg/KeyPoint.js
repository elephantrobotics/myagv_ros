// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2f = require('./Point2f.js');

//-----------------------------------------------------------

class KeyPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pt = null;
      this.size = null;
      this.angle = null;
      this.response = null;
      this.octave = null;
      this.class_id = null;
    }
    else {
      if (initObj.hasOwnProperty('pt')) {
        this.pt = initObj.pt
      }
      else {
        this.pt = new Point2f();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = 0.0;
      }
      if (initObj.hasOwnProperty('octave')) {
        this.octave = initObj.octave
      }
      else {
        this.octave = 0;
      }
      if (initObj.hasOwnProperty('class_id')) {
        this.class_id = initObj.class_id
      }
      else {
        this.class_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeyPoint
    // Serialize message field [pt]
    bufferOffset = Point2f.serialize(obj.pt, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.float32(obj.size, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [response]
    bufferOffset = _serializer.float32(obj.response, buffer, bufferOffset);
    // Serialize message field [octave]
    bufferOffset = _serializer.int32(obj.octave, buffer, bufferOffset);
    // Serialize message field [class_id]
    bufferOffset = _serializer.int32(obj.class_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeyPoint
    let len;
    let data = new KeyPoint(null);
    // Deserialize message field [pt]
    data.pt = Point2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [response]
    data.response = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [octave]
    data.octave = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [class_id]
    data.class_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/KeyPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11cefb08bec6034bef3e32ec473dc6a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KeyPoint(null);
    if (msg.pt !== undefined) {
      resolved.pt = Point2f.Resolve(msg.pt)
    }
    else {
      resolved.pt = new Point2f()
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = 0.0
    }

    if (msg.octave !== undefined) {
      resolved.octave = msg.octave;
    }
    else {
      resolved.octave = 0
    }

    if (msg.class_id !== undefined) {
      resolved.class_id = msg.class_id;
    }
    else {
      resolved.class_id = 0
    }

    return resolved;
    }
};

module.exports = KeyPoint;
