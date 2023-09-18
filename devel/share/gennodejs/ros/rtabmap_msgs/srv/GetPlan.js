// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let Path = require('../msg/Path.js');

//-----------------------------------------------------------

class GetPlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_node = null;
      this.goal = null;
      this.tolerance = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_node')) {
        this.goal_node = initObj.goal_node
      }
      else {
        this.goal_node = 0;
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPlanRequest
    // Serialize message field [goal_node]
    bufferOffset = _serializer.int32(obj.goal_node, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float32(obj.tolerance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPlanRequest
    let len;
    let data = new GetPlanRequest(null);
    // Deserialize message field [goal_node]
    data.goal_node = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.goal);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/GetPlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93cea387b2aa9245414c000574ff1591';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get a plan from the current position to the goal node or pose 
    
    # The final node of the goal (set 0 to use pose instead)
    int32 goal_node
    # The final pose of the goal position (used only if goalNodeId=0)
    geometry_msgs/PoseStamped goal
    
    # How many meters from the map's graph we can plan (0=infinite)
    float32 tolerance
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new GetPlanRequest(null);
    if (msg.goal_node !== undefined) {
      resolved.goal_node = msg.goal_node;
    }
    else {
      resolved.goal_node = 0
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.PoseStamped.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    return resolved;
    }
};

class GetPlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = new Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPlanResponse
    // Serialize message field [plan]
    bufferOffset = Path.serialize(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPlanResponse
    let len;
    let data = new GetPlanResponse(null);
    // Deserialize message field [plan]
    data.plan = Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Path.getMessageSize(object.plan);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rtabmap_msgs/GetPlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0412b9858bfcee4b2ee4fbf2f8eb5028';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Path plan
    
    ================================================================================
    MSG: rtabmap_msgs/Path
    
    Header header
    
    int32[] nodeIds
    geometry_msgs/Pose[] poses
    
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new GetPlanResponse(null);
    if (msg.plan !== undefined) {
      resolved.plan = Path.Resolve(msg.plan)
    }
    else {
      resolved.plan = new Path()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPlanRequest,
  Response: GetPlanResponse,
  md5sum() { return '11e7a6b05e2b36bab483bec069bf36b9'; },
  datatype() { return 'rtabmap_msgs/GetPlan'; }
};
