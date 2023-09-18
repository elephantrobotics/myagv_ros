// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Link {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fromId = null;
      this.toId = null;
      this.type = null;
      this.transform = null;
      this.information = null;
    }
    else {
      if (initObj.hasOwnProperty('fromId')) {
        this.fromId = initObj.fromId
      }
      else {
        this.fromId = 0;
      }
      if (initObj.hasOwnProperty('toId')) {
        this.toId = initObj.toId
      }
      else {
        this.toId = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('information')) {
        this.information = initObj.information
      }
      else {
        this.information = new Array(36).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Link
    // Serialize message field [fromId]
    bufferOffset = _serializer.int32(obj.fromId, buffer, bufferOffset);
    // Serialize message field [toId]
    bufferOffset = _serializer.int32(obj.toId, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Check that the constant length array field [information] has the right length
    if (obj.information.length !== 36) {
      throw new Error('Unable to serialize array field information - length must be 36')
    }
    // Serialize message field [information]
    bufferOffset = _arraySerializer.float64(obj.information, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Link
    let len;
    let data = new Link(null);
    // Deserialize message field [fromId]
    data.fromId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [toId]
    data.toId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [information]
    data.information = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    return 356;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/Link';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48bafa7643c4731e90b468e7c4fa06b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #class rtabmap::Link
    #{
    #   int from;
    #   int to;
    #   Type type;
    #   Transform transform;
    #   cv::Mat(6,6,CV_64FC1) information;
    #}
    
    int32 fromId
    int32 toId
    int32 type
    geometry_msgs/Transform transform
    float64[36] information
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
    const resolved = new Link(null);
    if (msg.fromId !== undefined) {
      resolved.fromId = msg.fromId;
    }
    else {
      resolved.fromId = 0
    }

    if (msg.toId !== undefined) {
      resolved.toId = msg.toId;
    }
    else {
      resolved.toId = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.information !== undefined) {
      resolved.information = msg.information;
    }
    else {
      resolved.information = new Array(36).fill(0)
    }

    return resolved;
    }
};

module.exports = Link;
