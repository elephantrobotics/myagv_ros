// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapGraph = require('./MapGraph.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.refId = null;
      this.loopClosureId = null;
      this.proximityDetectionId = null;
      this.landmarkId = null;
      this.loopClosureTransform = null;
      this.wmState = null;
      this.posteriorKeys = null;
      this.posteriorValues = null;
      this.likelihoodKeys = null;
      this.likelihoodValues = null;
      this.rawLikelihoodKeys = null;
      this.rawLikelihoodValues = null;
      this.weightsKeys = null;
      this.weightsValues = null;
      this.labelsKeys = null;
      this.labelsValues = null;
      this.statsKeys = null;
      this.statsValues = null;
      this.localPath = null;
      this.currentGoalId = null;
      this.odom_cache = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('refId')) {
        this.refId = initObj.refId
      }
      else {
        this.refId = 0;
      }
      if (initObj.hasOwnProperty('loopClosureId')) {
        this.loopClosureId = initObj.loopClosureId
      }
      else {
        this.loopClosureId = 0;
      }
      if (initObj.hasOwnProperty('proximityDetectionId')) {
        this.proximityDetectionId = initObj.proximityDetectionId
      }
      else {
        this.proximityDetectionId = 0;
      }
      if (initObj.hasOwnProperty('landmarkId')) {
        this.landmarkId = initObj.landmarkId
      }
      else {
        this.landmarkId = 0;
      }
      if (initObj.hasOwnProperty('loopClosureTransform')) {
        this.loopClosureTransform = initObj.loopClosureTransform
      }
      else {
        this.loopClosureTransform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('wmState')) {
        this.wmState = initObj.wmState
      }
      else {
        this.wmState = [];
      }
      if (initObj.hasOwnProperty('posteriorKeys')) {
        this.posteriorKeys = initObj.posteriorKeys
      }
      else {
        this.posteriorKeys = [];
      }
      if (initObj.hasOwnProperty('posteriorValues')) {
        this.posteriorValues = initObj.posteriorValues
      }
      else {
        this.posteriorValues = [];
      }
      if (initObj.hasOwnProperty('likelihoodKeys')) {
        this.likelihoodKeys = initObj.likelihoodKeys
      }
      else {
        this.likelihoodKeys = [];
      }
      if (initObj.hasOwnProperty('likelihoodValues')) {
        this.likelihoodValues = initObj.likelihoodValues
      }
      else {
        this.likelihoodValues = [];
      }
      if (initObj.hasOwnProperty('rawLikelihoodKeys')) {
        this.rawLikelihoodKeys = initObj.rawLikelihoodKeys
      }
      else {
        this.rawLikelihoodKeys = [];
      }
      if (initObj.hasOwnProperty('rawLikelihoodValues')) {
        this.rawLikelihoodValues = initObj.rawLikelihoodValues
      }
      else {
        this.rawLikelihoodValues = [];
      }
      if (initObj.hasOwnProperty('weightsKeys')) {
        this.weightsKeys = initObj.weightsKeys
      }
      else {
        this.weightsKeys = [];
      }
      if (initObj.hasOwnProperty('weightsValues')) {
        this.weightsValues = initObj.weightsValues
      }
      else {
        this.weightsValues = [];
      }
      if (initObj.hasOwnProperty('labelsKeys')) {
        this.labelsKeys = initObj.labelsKeys
      }
      else {
        this.labelsKeys = [];
      }
      if (initObj.hasOwnProperty('labelsValues')) {
        this.labelsValues = initObj.labelsValues
      }
      else {
        this.labelsValues = [];
      }
      if (initObj.hasOwnProperty('statsKeys')) {
        this.statsKeys = initObj.statsKeys
      }
      else {
        this.statsKeys = [];
      }
      if (initObj.hasOwnProperty('statsValues')) {
        this.statsValues = initObj.statsValues
      }
      else {
        this.statsValues = [];
      }
      if (initObj.hasOwnProperty('localPath')) {
        this.localPath = initObj.localPath
      }
      else {
        this.localPath = [];
      }
      if (initObj.hasOwnProperty('currentGoalId')) {
        this.currentGoalId = initObj.currentGoalId
      }
      else {
        this.currentGoalId = 0;
      }
      if (initObj.hasOwnProperty('odom_cache')) {
        this.odom_cache = initObj.odom_cache
      }
      else {
        this.odom_cache = new MapGraph();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Info
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [refId]
    bufferOffset = _serializer.int32(obj.refId, buffer, bufferOffset);
    // Serialize message field [loopClosureId]
    bufferOffset = _serializer.int32(obj.loopClosureId, buffer, bufferOffset);
    // Serialize message field [proximityDetectionId]
    bufferOffset = _serializer.int32(obj.proximityDetectionId, buffer, bufferOffset);
    // Serialize message field [landmarkId]
    bufferOffset = _serializer.int32(obj.landmarkId, buffer, bufferOffset);
    // Serialize message field [loopClosureTransform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.loopClosureTransform, buffer, bufferOffset);
    // Serialize message field [wmState]
    bufferOffset = _arraySerializer.int32(obj.wmState, buffer, bufferOffset, null);
    // Serialize message field [posteriorKeys]
    bufferOffset = _arraySerializer.int32(obj.posteriorKeys, buffer, bufferOffset, null);
    // Serialize message field [posteriorValues]
    bufferOffset = _arraySerializer.float32(obj.posteriorValues, buffer, bufferOffset, null);
    // Serialize message field [likelihoodKeys]
    bufferOffset = _arraySerializer.int32(obj.likelihoodKeys, buffer, bufferOffset, null);
    // Serialize message field [likelihoodValues]
    bufferOffset = _arraySerializer.float32(obj.likelihoodValues, buffer, bufferOffset, null);
    // Serialize message field [rawLikelihoodKeys]
    bufferOffset = _arraySerializer.int32(obj.rawLikelihoodKeys, buffer, bufferOffset, null);
    // Serialize message field [rawLikelihoodValues]
    bufferOffset = _arraySerializer.float32(obj.rawLikelihoodValues, buffer, bufferOffset, null);
    // Serialize message field [weightsKeys]
    bufferOffset = _arraySerializer.int32(obj.weightsKeys, buffer, bufferOffset, null);
    // Serialize message field [weightsValues]
    bufferOffset = _arraySerializer.int32(obj.weightsValues, buffer, bufferOffset, null);
    // Serialize message field [labelsKeys]
    bufferOffset = _arraySerializer.int32(obj.labelsKeys, buffer, bufferOffset, null);
    // Serialize message field [labelsValues]
    bufferOffset = _arraySerializer.string(obj.labelsValues, buffer, bufferOffset, null);
    // Serialize message field [statsKeys]
    bufferOffset = _arraySerializer.string(obj.statsKeys, buffer, bufferOffset, null);
    // Serialize message field [statsValues]
    bufferOffset = _arraySerializer.float32(obj.statsValues, buffer, bufferOffset, null);
    // Serialize message field [localPath]
    bufferOffset = _arraySerializer.int32(obj.localPath, buffer, bufferOffset, null);
    // Serialize message field [currentGoalId]
    bufferOffset = _serializer.int32(obj.currentGoalId, buffer, bufferOffset);
    // Serialize message field [odom_cache]
    bufferOffset = MapGraph.serialize(obj.odom_cache, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Info
    let len;
    let data = new Info(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [refId]
    data.refId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [loopClosureId]
    data.loopClosureId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [proximityDetectionId]
    data.proximityDetectionId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [landmarkId]
    data.landmarkId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [loopClosureTransform]
    data.loopClosureTransform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [wmState]
    data.wmState = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [posteriorKeys]
    data.posteriorKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [posteriorValues]
    data.posteriorValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [likelihoodKeys]
    data.likelihoodKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [likelihoodValues]
    data.likelihoodValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [rawLikelihoodKeys]
    data.rawLikelihoodKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [rawLikelihoodValues]
    data.rawLikelihoodValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [weightsKeys]
    data.weightsKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [weightsValues]
    data.weightsValues = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [labelsKeys]
    data.labelsKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [labelsValues]
    data.labelsValues = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [statsKeys]
    data.statsKeys = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [statsValues]
    data.statsValues = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [localPath]
    data.localPath = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [currentGoalId]
    data.currentGoalId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [odom_cache]
    data.odom_cache = MapGraph.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.wmState.length;
    length += 4 * object.posteriorKeys.length;
    length += 4 * object.posteriorValues.length;
    length += 4 * object.likelihoodKeys.length;
    length += 4 * object.likelihoodValues.length;
    length += 4 * object.rawLikelihoodKeys.length;
    length += 4 * object.rawLikelihoodValues.length;
    length += 4 * object.weightsKeys.length;
    length += 4 * object.weightsValues.length;
    length += 4 * object.labelsKeys.length;
    object.labelsValues.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.statsKeys.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.statsValues.length;
    length += 4 * object.localPath.length;
    length += MapGraph.getMessageSize(object.odom_cache);
    return length + 132;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/Info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '656fb5b8dfd8dfd2dc40226f35f2d440';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    ########################################
    # RTAB-Map info with statistics 
    ########################################
    
    Header header
    
    int32 refId
    int32 loopClosureId
    int32 proximityDetectionId
    int32 landmarkId
    
    geometry_msgs/Transform loopClosureTransform
    
    ####
    # For statistics...
    ####
    # State (node IDs) of the current Working Memory (including STM)
    int32[] wmState
    
    # std::map<int, float> posterior;
    int32[] posteriorKeys
    float32[] posteriorValues
    
    # std::map<int, float> likelihood;
    int32[] likelihoodKeys
    float32[] likelihoodValues
    
    # std::map<int, float> rawLikelihood;
    int32[] rawLikelihoodKeys
    float32[] rawLikelihoodValues
    
    # std::map<int, int> weights;
    int32[] weightsKeys
    int32[] weightsValues
    
    # std::map<int, std::string> labels;
    int32[] labelsKeys
    string[] labelsValues
    
    # std::map<std::string, float> stats
    string[] statsKeys
    float32[] statsValues
    
    # std::vector<int> localPath
    int32[] localPath
    int32 currentGoalId
    
    # std::vector<int> odomCache
    MapGraph odom_cache
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
    
    ================================================================================
    MSG: rtabmap_msgs/MapGraph
    
    Header header
    
    ##
    # /map to /odom transform
    # Always identity when the graph is optimized from the latest pose.
    ##
    geometry_msgs/Transform mapToOdom
    
    # The poses
    int32[] posesId
    geometry_msgs/Pose[] poses
    
    # The links
    Link[] links
    
    
    
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Info(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.refId !== undefined) {
      resolved.refId = msg.refId;
    }
    else {
      resolved.refId = 0
    }

    if (msg.loopClosureId !== undefined) {
      resolved.loopClosureId = msg.loopClosureId;
    }
    else {
      resolved.loopClosureId = 0
    }

    if (msg.proximityDetectionId !== undefined) {
      resolved.proximityDetectionId = msg.proximityDetectionId;
    }
    else {
      resolved.proximityDetectionId = 0
    }

    if (msg.landmarkId !== undefined) {
      resolved.landmarkId = msg.landmarkId;
    }
    else {
      resolved.landmarkId = 0
    }

    if (msg.loopClosureTransform !== undefined) {
      resolved.loopClosureTransform = geometry_msgs.msg.Transform.Resolve(msg.loopClosureTransform)
    }
    else {
      resolved.loopClosureTransform = new geometry_msgs.msg.Transform()
    }

    if (msg.wmState !== undefined) {
      resolved.wmState = msg.wmState;
    }
    else {
      resolved.wmState = []
    }

    if (msg.posteriorKeys !== undefined) {
      resolved.posteriorKeys = msg.posteriorKeys;
    }
    else {
      resolved.posteriorKeys = []
    }

    if (msg.posteriorValues !== undefined) {
      resolved.posteriorValues = msg.posteriorValues;
    }
    else {
      resolved.posteriorValues = []
    }

    if (msg.likelihoodKeys !== undefined) {
      resolved.likelihoodKeys = msg.likelihoodKeys;
    }
    else {
      resolved.likelihoodKeys = []
    }

    if (msg.likelihoodValues !== undefined) {
      resolved.likelihoodValues = msg.likelihoodValues;
    }
    else {
      resolved.likelihoodValues = []
    }

    if (msg.rawLikelihoodKeys !== undefined) {
      resolved.rawLikelihoodKeys = msg.rawLikelihoodKeys;
    }
    else {
      resolved.rawLikelihoodKeys = []
    }

    if (msg.rawLikelihoodValues !== undefined) {
      resolved.rawLikelihoodValues = msg.rawLikelihoodValues;
    }
    else {
      resolved.rawLikelihoodValues = []
    }

    if (msg.weightsKeys !== undefined) {
      resolved.weightsKeys = msg.weightsKeys;
    }
    else {
      resolved.weightsKeys = []
    }

    if (msg.weightsValues !== undefined) {
      resolved.weightsValues = msg.weightsValues;
    }
    else {
      resolved.weightsValues = []
    }

    if (msg.labelsKeys !== undefined) {
      resolved.labelsKeys = msg.labelsKeys;
    }
    else {
      resolved.labelsKeys = []
    }

    if (msg.labelsValues !== undefined) {
      resolved.labelsValues = msg.labelsValues;
    }
    else {
      resolved.labelsValues = []
    }

    if (msg.statsKeys !== undefined) {
      resolved.statsKeys = msg.statsKeys;
    }
    else {
      resolved.statsKeys = []
    }

    if (msg.statsValues !== undefined) {
      resolved.statsValues = msg.statsValues;
    }
    else {
      resolved.statsValues = []
    }

    if (msg.localPath !== undefined) {
      resolved.localPath = msg.localPath;
    }
    else {
      resolved.localPath = []
    }

    if (msg.currentGoalId !== undefined) {
      resolved.currentGoalId = msg.currentGoalId;
    }
    else {
      resolved.currentGoalId = 0
    }

    if (msg.odom_cache !== undefined) {
      resolved.odom_cache = MapGraph.Resolve(msg.odom_cache)
    }
    else {
      resolved.odom_cache = new MapGraph()
    }

    return resolved;
    }
};

module.exports = Info;
