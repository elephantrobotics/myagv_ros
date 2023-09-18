// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Link = require('../msg/Link.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddLinkRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link = null;
    }
    else {
      if (initObj.hasOwnProperty('link')) {
        this.link = initObj.link
      }
      else {
        this.link = new Link();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddLinkRequest
    // Serialize message field [link]
    bufferOffset = Link.serialize(obj.link, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddLinkRequest
    let len;
    let data = new AddLinkRequest(null);
    // Deserialize message field [link]
    data.link = Link.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 356;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/AddLinkRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '050728e3c25a15bf78d487d6aafab152';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    Link link
    
    ================================================================================
    MSG: rtabmap_msgs/Link
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
    const resolved = new AddLinkRequest(null);
    if (msg.link !== undefined) {
      resolved.link = Link.Resolve(msg.link)
    }
    else {
      resolved.link = new Link()
    }

    return resolved;
    }
};

class AddLinkResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddLinkResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddLinkResponse
    let len;
    let data = new AddLinkResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/AddLinkResponse';
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
    const resolved = new AddLinkResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AddLinkRequest,
  Response: AddLinkResponse,
  md5sum() { return '050728e3c25a15bf78d487d6aafab152'; },
  datatype() { return 'rtabmap_msgs/AddLink'; }
};
