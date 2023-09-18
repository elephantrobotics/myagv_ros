// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraModels = require('./CameraModels.js');
let KeyPoint = require('./KeyPoint.js');
let Point3f = require('./Point3f.js');
let Point2f = require('./Point2f.js');
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OdomInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lost = null;
      this.matches = null;
      this.inliers = null;
      this.icpInliersRatio = null;
      this.icpRotation = null;
      this.icpTranslation = null;
      this.icpStructuralComplexity = null;
      this.icpStructuralDistribution = null;
      this.icpCorrespondences = null;
      this.covariance = null;
      this.features = null;
      this.localMapSize = null;
      this.localScanMapSize = null;
      this.localKeyFrames = null;
      this.localBundleOutliers = null;
      this.localBundleConstraints = null;
      this.localBundleTime = null;
      this.keyFrameAdded = null;
      this.timeEstimation = null;
      this.timeParticleFiltering = null;
      this.stamp = null;
      this.interval = null;
      this.distanceTravelled = null;
      this.memoryUsage = null;
      this.gravityRollError = null;
      this.gravityPitchError = null;
      this.localBundleIds = null;
      this.localBundleModels = null;
      this.localBundlePoses = null;
      this.transform = null;
      this.transformFiltered = null;
      this.transformGroundTruth = null;
      this.guess = null;
      this.type = null;
      this.wordsKeys = null;
      this.wordsValues = null;
      this.wordMatches = null;
      this.wordInliers = null;
      this.localMapKeys = null;
      this.localMapValues = null;
      this.localScanMap = null;
      this.refCorners = null;
      this.newCorners = null;
      this.cornerInliers = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lost')) {
        this.lost = initObj.lost
      }
      else {
        this.lost = false;
      }
      if (initObj.hasOwnProperty('matches')) {
        this.matches = initObj.matches
      }
      else {
        this.matches = 0;
      }
      if (initObj.hasOwnProperty('inliers')) {
        this.inliers = initObj.inliers
      }
      else {
        this.inliers = 0;
      }
      if (initObj.hasOwnProperty('icpInliersRatio')) {
        this.icpInliersRatio = initObj.icpInliersRatio
      }
      else {
        this.icpInliersRatio = 0.0;
      }
      if (initObj.hasOwnProperty('icpRotation')) {
        this.icpRotation = initObj.icpRotation
      }
      else {
        this.icpRotation = 0.0;
      }
      if (initObj.hasOwnProperty('icpTranslation')) {
        this.icpTranslation = initObj.icpTranslation
      }
      else {
        this.icpTranslation = 0.0;
      }
      if (initObj.hasOwnProperty('icpStructuralComplexity')) {
        this.icpStructuralComplexity = initObj.icpStructuralComplexity
      }
      else {
        this.icpStructuralComplexity = 0.0;
      }
      if (initObj.hasOwnProperty('icpStructuralDistribution')) {
        this.icpStructuralDistribution = initObj.icpStructuralDistribution
      }
      else {
        this.icpStructuralDistribution = 0.0;
      }
      if (initObj.hasOwnProperty('icpCorrespondences')) {
        this.icpCorrespondences = initObj.icpCorrespondences
      }
      else {
        this.icpCorrespondences = 0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(36).fill(0);
      }
      if (initObj.hasOwnProperty('features')) {
        this.features = initObj.features
      }
      else {
        this.features = 0;
      }
      if (initObj.hasOwnProperty('localMapSize')) {
        this.localMapSize = initObj.localMapSize
      }
      else {
        this.localMapSize = 0;
      }
      if (initObj.hasOwnProperty('localScanMapSize')) {
        this.localScanMapSize = initObj.localScanMapSize
      }
      else {
        this.localScanMapSize = 0;
      }
      if (initObj.hasOwnProperty('localKeyFrames')) {
        this.localKeyFrames = initObj.localKeyFrames
      }
      else {
        this.localKeyFrames = 0;
      }
      if (initObj.hasOwnProperty('localBundleOutliers')) {
        this.localBundleOutliers = initObj.localBundleOutliers
      }
      else {
        this.localBundleOutliers = 0;
      }
      if (initObj.hasOwnProperty('localBundleConstraints')) {
        this.localBundleConstraints = initObj.localBundleConstraints
      }
      else {
        this.localBundleConstraints = 0;
      }
      if (initObj.hasOwnProperty('localBundleTime')) {
        this.localBundleTime = initObj.localBundleTime
      }
      else {
        this.localBundleTime = 0.0;
      }
      if (initObj.hasOwnProperty('keyFrameAdded')) {
        this.keyFrameAdded = initObj.keyFrameAdded
      }
      else {
        this.keyFrameAdded = false;
      }
      if (initObj.hasOwnProperty('timeEstimation')) {
        this.timeEstimation = initObj.timeEstimation
      }
      else {
        this.timeEstimation = 0.0;
      }
      if (initObj.hasOwnProperty('timeParticleFiltering')) {
        this.timeParticleFiltering = initObj.timeParticleFiltering
      }
      else {
        this.timeParticleFiltering = 0.0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = 0.0;
      }
      if (initObj.hasOwnProperty('interval')) {
        this.interval = initObj.interval
      }
      else {
        this.interval = 0.0;
      }
      if (initObj.hasOwnProperty('distanceTravelled')) {
        this.distanceTravelled = initObj.distanceTravelled
      }
      else {
        this.distanceTravelled = 0.0;
      }
      if (initObj.hasOwnProperty('memoryUsage')) {
        this.memoryUsage = initObj.memoryUsage
      }
      else {
        this.memoryUsage = 0;
      }
      if (initObj.hasOwnProperty('gravityRollError')) {
        this.gravityRollError = initObj.gravityRollError
      }
      else {
        this.gravityRollError = 0.0;
      }
      if (initObj.hasOwnProperty('gravityPitchError')) {
        this.gravityPitchError = initObj.gravityPitchError
      }
      else {
        this.gravityPitchError = 0.0;
      }
      if (initObj.hasOwnProperty('localBundleIds')) {
        this.localBundleIds = initObj.localBundleIds
      }
      else {
        this.localBundleIds = [];
      }
      if (initObj.hasOwnProperty('localBundleModels')) {
        this.localBundleModels = initObj.localBundleModels
      }
      else {
        this.localBundleModels = [];
      }
      if (initObj.hasOwnProperty('localBundlePoses')) {
        this.localBundlePoses = initObj.localBundlePoses
      }
      else {
        this.localBundlePoses = [];
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('transformFiltered')) {
        this.transformFiltered = initObj.transformFiltered
      }
      else {
        this.transformFiltered = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('transformGroundTruth')) {
        this.transformGroundTruth = initObj.transformGroundTruth
      }
      else {
        this.transformGroundTruth = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('guess')) {
        this.guess = initObj.guess
      }
      else {
        this.guess = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('wordsKeys')) {
        this.wordsKeys = initObj.wordsKeys
      }
      else {
        this.wordsKeys = [];
      }
      if (initObj.hasOwnProperty('wordsValues')) {
        this.wordsValues = initObj.wordsValues
      }
      else {
        this.wordsValues = [];
      }
      if (initObj.hasOwnProperty('wordMatches')) {
        this.wordMatches = initObj.wordMatches
      }
      else {
        this.wordMatches = [];
      }
      if (initObj.hasOwnProperty('wordInliers')) {
        this.wordInliers = initObj.wordInliers
      }
      else {
        this.wordInliers = [];
      }
      if (initObj.hasOwnProperty('localMapKeys')) {
        this.localMapKeys = initObj.localMapKeys
      }
      else {
        this.localMapKeys = [];
      }
      if (initObj.hasOwnProperty('localMapValues')) {
        this.localMapValues = initObj.localMapValues
      }
      else {
        this.localMapValues = [];
      }
      if (initObj.hasOwnProperty('localScanMap')) {
        this.localScanMap = initObj.localScanMap
      }
      else {
        this.localScanMap = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('refCorners')) {
        this.refCorners = initObj.refCorners
      }
      else {
        this.refCorners = [];
      }
      if (initObj.hasOwnProperty('newCorners')) {
        this.newCorners = initObj.newCorners
      }
      else {
        this.newCorners = [];
      }
      if (initObj.hasOwnProperty('cornerInliers')) {
        this.cornerInliers = initObj.cornerInliers
      }
      else {
        this.cornerInliers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdomInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lost]
    bufferOffset = _serializer.bool(obj.lost, buffer, bufferOffset);
    // Serialize message field [matches]
    bufferOffset = _serializer.int32(obj.matches, buffer, bufferOffset);
    // Serialize message field [inliers]
    bufferOffset = _serializer.int32(obj.inliers, buffer, bufferOffset);
    // Serialize message field [icpInliersRatio]
    bufferOffset = _serializer.float32(obj.icpInliersRatio, buffer, bufferOffset);
    // Serialize message field [icpRotation]
    bufferOffset = _serializer.float32(obj.icpRotation, buffer, bufferOffset);
    // Serialize message field [icpTranslation]
    bufferOffset = _serializer.float32(obj.icpTranslation, buffer, bufferOffset);
    // Serialize message field [icpStructuralComplexity]
    bufferOffset = _serializer.float32(obj.icpStructuralComplexity, buffer, bufferOffset);
    // Serialize message field [icpStructuralDistribution]
    bufferOffset = _serializer.float32(obj.icpStructuralDistribution, buffer, bufferOffset);
    // Serialize message field [icpCorrespondences]
    bufferOffset = _serializer.int32(obj.icpCorrespondences, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 36) {
      throw new Error('Unable to serialize array field covariance - length must be 36')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 36);
    // Serialize message field [features]
    bufferOffset = _serializer.int32(obj.features, buffer, bufferOffset);
    // Serialize message field [localMapSize]
    bufferOffset = _serializer.int32(obj.localMapSize, buffer, bufferOffset);
    // Serialize message field [localScanMapSize]
    bufferOffset = _serializer.int32(obj.localScanMapSize, buffer, bufferOffset);
    // Serialize message field [localKeyFrames]
    bufferOffset = _serializer.int32(obj.localKeyFrames, buffer, bufferOffset);
    // Serialize message field [localBundleOutliers]
    bufferOffset = _serializer.int32(obj.localBundleOutliers, buffer, bufferOffset);
    // Serialize message field [localBundleConstraints]
    bufferOffset = _serializer.int32(obj.localBundleConstraints, buffer, bufferOffset);
    // Serialize message field [localBundleTime]
    bufferOffset = _serializer.float32(obj.localBundleTime, buffer, bufferOffset);
    // Serialize message field [keyFrameAdded]
    bufferOffset = _serializer.bool(obj.keyFrameAdded, buffer, bufferOffset);
    // Serialize message field [timeEstimation]
    bufferOffset = _serializer.float32(obj.timeEstimation, buffer, bufferOffset);
    // Serialize message field [timeParticleFiltering]
    bufferOffset = _serializer.float32(obj.timeParticleFiltering, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.float32(obj.stamp, buffer, bufferOffset);
    // Serialize message field [interval]
    bufferOffset = _serializer.float32(obj.interval, buffer, bufferOffset);
    // Serialize message field [distanceTravelled]
    bufferOffset = _serializer.float32(obj.distanceTravelled, buffer, bufferOffset);
    // Serialize message field [memoryUsage]
    bufferOffset = _serializer.int32(obj.memoryUsage, buffer, bufferOffset);
    // Serialize message field [gravityRollError]
    bufferOffset = _serializer.float32(obj.gravityRollError, buffer, bufferOffset);
    // Serialize message field [gravityPitchError]
    bufferOffset = _serializer.float32(obj.gravityPitchError, buffer, bufferOffset);
    // Serialize message field [localBundleIds]
    bufferOffset = _arraySerializer.int32(obj.localBundleIds, buffer, bufferOffset, null);
    // Serialize message field [localBundleModels]
    // Serialize the length for message field [localBundleModels]
    bufferOffset = _serializer.uint32(obj.localBundleModels.length, buffer, bufferOffset);
    obj.localBundleModels.forEach((val) => {
      bufferOffset = CameraModels.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [localBundlePoses]
    // Serialize the length for message field [localBundlePoses]
    bufferOffset = _serializer.uint32(obj.localBundlePoses.length, buffer, bufferOffset);
    obj.localBundlePoses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [transformFiltered]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transformFiltered, buffer, bufferOffset);
    // Serialize message field [transformGroundTruth]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transformGroundTruth, buffer, bufferOffset);
    // Serialize message field [guess]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.guess, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [wordsKeys]
    bufferOffset = _arraySerializer.int32(obj.wordsKeys, buffer, bufferOffset, null);
    // Serialize message field [wordsValues]
    // Serialize the length for message field [wordsValues]
    bufferOffset = _serializer.uint32(obj.wordsValues.length, buffer, bufferOffset);
    obj.wordsValues.forEach((val) => {
      bufferOffset = KeyPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [wordMatches]
    bufferOffset = _arraySerializer.int32(obj.wordMatches, buffer, bufferOffset, null);
    // Serialize message field [wordInliers]
    bufferOffset = _arraySerializer.int32(obj.wordInliers, buffer, bufferOffset, null);
    // Serialize message field [localMapKeys]
    bufferOffset = _arraySerializer.int32(obj.localMapKeys, buffer, bufferOffset, null);
    // Serialize message field [localMapValues]
    // Serialize the length for message field [localMapValues]
    bufferOffset = _serializer.uint32(obj.localMapValues.length, buffer, bufferOffset);
    obj.localMapValues.forEach((val) => {
      bufferOffset = Point3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [localScanMap]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.localScanMap, buffer, bufferOffset);
    // Serialize message field [refCorners]
    // Serialize the length for message field [refCorners]
    bufferOffset = _serializer.uint32(obj.refCorners.length, buffer, bufferOffset);
    obj.refCorners.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [newCorners]
    // Serialize the length for message field [newCorners]
    bufferOffset = _serializer.uint32(obj.newCorners.length, buffer, bufferOffset);
    obj.newCorners.forEach((val) => {
      bufferOffset = Point2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cornerInliers]
    bufferOffset = _arraySerializer.int32(obj.cornerInliers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdomInfo
    let len;
    let data = new OdomInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lost]
    data.lost = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [matches]
    data.matches = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [inliers]
    data.inliers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [icpInliersRatio]
    data.icpInliersRatio = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [icpRotation]
    data.icpRotation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [icpTranslation]
    data.icpTranslation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [icpStructuralComplexity]
    data.icpStructuralComplexity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [icpStructuralDistribution]
    data.icpStructuralDistribution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [icpCorrespondences]
    data.icpCorrespondences = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    // Deserialize message field [features]
    data.features = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localMapSize]
    data.localMapSize = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localScanMapSize]
    data.localScanMapSize = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localKeyFrames]
    data.localKeyFrames = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localBundleOutliers]
    data.localBundleOutliers = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localBundleConstraints]
    data.localBundleConstraints = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [localBundleTime]
    data.localBundleTime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [keyFrameAdded]
    data.keyFrameAdded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeEstimation]
    data.timeEstimation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeParticleFiltering]
    data.timeParticleFiltering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [interval]
    data.interval = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distanceTravelled]
    data.distanceTravelled = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [memoryUsage]
    data.memoryUsage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gravityRollError]
    data.gravityRollError = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gravityPitchError]
    data.gravityPitchError = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [localBundleIds]
    data.localBundleIds = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [localBundleModels]
    // Deserialize array length for message field [localBundleModels]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.localBundleModels = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.localBundleModels[i] = CameraModels.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [localBundlePoses]
    // Deserialize array length for message field [localBundlePoses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.localBundlePoses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.localBundlePoses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [transformFiltered]
    data.transformFiltered = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [transformGroundTruth]
    data.transformGroundTruth = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [guess]
    data.guess = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wordsKeys]
    data.wordsKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wordsValues]
    // Deserialize array length for message field [wordsValues]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wordsValues = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wordsValues[i] = KeyPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wordMatches]
    data.wordMatches = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wordInliers]
    data.wordInliers = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [localMapKeys]
    data.localMapKeys = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [localMapValues]
    // Deserialize array length for message field [localMapValues]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.localMapValues = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.localMapValues[i] = Point3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [localScanMap]
    data.localScanMap = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [refCorners]
    // Deserialize array length for message field [refCorners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.refCorners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.refCorners[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [newCorners]
    // Deserialize array length for message field [newCorners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.newCorners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.newCorners[i] = Point2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cornerInliers]
    data.cornerInliers = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.localBundleIds.length;
    object.localBundleModels.forEach((val) => {
      length += CameraModels.getMessageSize(val);
    });
    length += 56 * object.localBundlePoses.length;
    length += 4 * object.wordsKeys.length;
    length += 28 * object.wordsValues.length;
    length += 4 * object.wordMatches.length;
    length += 4 * object.wordInliers.length;
    length += 4 * object.localMapKeys.length;
    length += 12 * object.localMapValues.length;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.localScanMap);
    length += 8 * object.refCorners.length;
    length += 8 * object.newCorners.length;
    length += 4 * object.cornerInliers.length;
    return length + 658;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/OdomInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52076ef68d0b87422f3983864c204b62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    
    bool lost
    int32 matches
    int32 inliers
    float32 icpInliersRatio
    float32 icpRotation
    float32 icpTranslation
    float32 icpStructuralComplexity
    float32 icpStructuralDistribution
    int32 icpCorrespondences
    float64[36] covariance
    int32 features
    int32 localMapSize
    int32 localScanMapSize
    int32 localKeyFrames
    int32 localBundleOutliers
    int32 localBundleConstraints
    float32 localBundleTime
    bool keyFrameAdded
    float32 timeEstimation
    float32 timeParticleFiltering
    float32 stamp
    float32 interval
    float32 distanceTravelled
    int32 memoryUsage # MB
    float32 gravityRollError
    float32 gravityPitchError
    
    # Local bundle camera ids
    int32[] localBundleIds
    
    # Local bundle camera models
    CameraModels[] localBundleModels
    
    # Local bundle camera poses
    geometry_msgs/Pose[] localBundlePoses
    
    geometry_msgs/Transform transform
    geometry_msgs/Transform transformFiltered
    geometry_msgs/Transform transformGroundTruth
    geometry_msgs/Transform guess
    
    # 0=F2M, 1=F2F
    int32 type
    
    # F2M odometry
    #   std::multimap<int, cv::KeyPoint> words;
    #   std::vector<int> wordMatches;
    #   std::vector<int> wordInliers;
    int32[] wordsKeys
    KeyPoint[] wordsValues
    int32[] wordMatches
    int32[] wordInliers
    int32[] localMapKeys
    Point3f[] localMapValues
    
    # local scan map data
    sensor_msgs/PointCloud2 localScanMap
    
    # F2F odometry
    #   std::vector<cv::Point2f> refCorners;
    #   std::vector<cv::Point2f> newCorners;
    #   std::vector<int> cornerInliers;
    Point2f[] refCorners
    Point2f[] newCorners
    int32[] cornerInliers
    
    
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
    MSG: rtabmap_msgs/CameraModels
    
    CameraModel[] models
    
    
    ================================================================================
    MSG: rtabmap_msgs/CameraModel
    
    sensor_msgs/CameraInfo camera_info
    geometry_msgs/Transform local_transform
    
    
    ================================================================================
    MSG: sensor_msgs/CameraInfo
    # This message defines meta information for a camera. It should be in a
    # camera namespace on topic "camera_info" and accompanied by up to five
    # image topics named:
    #
    #   image_raw - raw data from the camera driver, possibly Bayer encoded
    #   image            - monochrome, distorted
    #   image_color      - color, distorted
    #   image_rect       - monochrome, rectified
    #   image_rect_color - color, rectified
    #
    # The image_pipeline contains packages (image_proc, stereo_image_proc)
    # for producing the four processed image topics from image_raw and
    # camera_info. The meaning of the camera parameters are described in
    # detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
    #
    # The image_geometry package provides a user-friendly interface to
    # common operations using this meta information. If you want to, e.g.,
    # project a 3d point into image coordinates, we strongly recommend
    # using image_geometry.
    #
    # If the camera is uncalibrated, the matrices D, K, R, P should be left
    # zeroed out. In particular, clients may assume that K[0] == 0.0
    # indicates an uncalibrated camera.
    
    #######################################################################
    #                     Image acquisition info                          #
    #######################################################################
    
    # Time of image acquisition, camera coordinate frame ID
    Header header    # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into the plane of the image
    
    
    #######################################################################
    #                      Calibration Parameters                         #
    #######################################################################
    # These are fixed during camera calibration. Their values will be the #
    # same in all messages until the camera is recalibrated. Note that    #
    # self-calibrating systems may "recalibrate" frequently.              #
    #                                                                     #
    # The internal parameters can be used to warp a raw (distorted) image #
    # to:                                                                 #
    #   1. An undistorted image (requires D and K)                        #
    #   2. A rectified image (requires D, K, R)                           #
    # The projection matrix P projects 3D points into the rectified image.#
    #######################################################################
    
    # The image dimensions with which the camera was calibrated. Normally
    # this will be the full camera resolution in pixels.
    uint32 height
    uint32 width
    
    # The distortion model used. Supported models are listed in
    # sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
    # simple model of radial and tangential distortion - is sufficient.
    string distortion_model
    
    # The distortion parameters, size depending on the distortion model.
    # For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
    float64[] D
    
    # Intrinsic camera matrix for the raw (distorted) images.
    #     [fx  0 cx]
    # K = [ 0 fy cy]
    #     [ 0  0  1]
    # Projects 3D points in the camera coordinate frame to 2D pixel
    # coordinates using the focal lengths (fx, fy) and principal point
    # (cx, cy).
    float64[9]  K # 3x3 row-major matrix
    
    # Rectification matrix (stereo cameras only)
    # A rotation matrix aligning the camera coordinate system to the ideal
    # stereo image plane so that epipolar lines in both stereo images are
    # parallel.
    float64[9]  R # 3x3 row-major matrix
    
    # Projection/camera matrix
    #     [fx'  0  cx' Tx]
    # P = [ 0  fy' cy' Ty]
    #     [ 0   0   1   0]
    # By convention, this matrix specifies the intrinsic (camera) matrix
    #  of the processed (rectified) image. That is, the left 3x3 portion
    #  is the normal camera intrinsic matrix for the rectified image.
    # It projects 3D points in the camera coordinate frame to 2D pixel
    #  coordinates using the focal lengths (fx', fy') and principal point
    #  (cx', cy') - these may differ from the values in K.
    # For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
    #  also have R = the identity and P[1:3,1:3] = K.
    # For a stereo pair, the fourth column [Tx Ty 0]' is related to the
    #  position of the optical center of the second camera in the first
    #  camera's frame. We assume Tz = 0 so both cameras are in the same
    #  stereo image plane. The first camera always has Tx = Ty = 0. For
    #  the right (second) camera of a horizontal stereo pair, Ty = 0 and
    #  Tx = -fx' * B, where B is the baseline between the cameras.
    # Given a 3D point [X Y Z]', the projection (x, y) of the point onto
    #  the rectified image is given by:
    #  [u v w]' = P * [X Y Z 1]'
    #         x = u / w
    #         y = v / w
    #  This holds for both images of a stereo pair.
    float64[12] P # 3x4 row-major matrix
    
    
    #######################################################################
    #                      Operational Parameters                         #
    #######################################################################
    # These define the image region actually captured by the camera       #
    # driver. Although they affect the geometry of the output image, they #
    # may be changed freely without recalibrating the camera.             #
    #######################################################################
    
    # Binning refers here to any camera setting which combines rectangular
    #  neighborhoods of pixels into larger "super-pixels." It reduces the
    #  resolution of the output image to
    #  (width / binning_x) x (height / binning_y).
    # The default values binning_x = binning_y = 0 is considered the same
    #  as binning_x = binning_y = 1 (no subsampling).
    uint32 binning_x
    uint32 binning_y
    
    # Region of interest (subwindow of full camera resolution), given in
    #  full resolution (unbinned) image coordinates. A particular ROI
    #  always denotes the same window of pixels on the camera sensor,
    #  regardless of binning settings.
    # The default setting of roi (all values 0) is considered the same as
    #  full resolution (roi.width = width, roi.height = height).
    RegionOfInterest roi
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
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
    MSG: rtabmap_msgs/KeyPoint
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
    ================================================================================
    MSG: rtabmap_msgs/Point3f
    #class cv::Point3f
    #{
    #    float x;
    #    float y;
    #    float z;
    #}
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdomInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lost !== undefined) {
      resolved.lost = msg.lost;
    }
    else {
      resolved.lost = false
    }

    if (msg.matches !== undefined) {
      resolved.matches = msg.matches;
    }
    else {
      resolved.matches = 0
    }

    if (msg.inliers !== undefined) {
      resolved.inliers = msg.inliers;
    }
    else {
      resolved.inliers = 0
    }

    if (msg.icpInliersRatio !== undefined) {
      resolved.icpInliersRatio = msg.icpInliersRatio;
    }
    else {
      resolved.icpInliersRatio = 0.0
    }

    if (msg.icpRotation !== undefined) {
      resolved.icpRotation = msg.icpRotation;
    }
    else {
      resolved.icpRotation = 0.0
    }

    if (msg.icpTranslation !== undefined) {
      resolved.icpTranslation = msg.icpTranslation;
    }
    else {
      resolved.icpTranslation = 0.0
    }

    if (msg.icpStructuralComplexity !== undefined) {
      resolved.icpStructuralComplexity = msg.icpStructuralComplexity;
    }
    else {
      resolved.icpStructuralComplexity = 0.0
    }

    if (msg.icpStructuralDistribution !== undefined) {
      resolved.icpStructuralDistribution = msg.icpStructuralDistribution;
    }
    else {
      resolved.icpStructuralDistribution = 0.0
    }

    if (msg.icpCorrespondences !== undefined) {
      resolved.icpCorrespondences = msg.icpCorrespondences;
    }
    else {
      resolved.icpCorrespondences = 0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(36).fill(0)
    }

    if (msg.features !== undefined) {
      resolved.features = msg.features;
    }
    else {
      resolved.features = 0
    }

    if (msg.localMapSize !== undefined) {
      resolved.localMapSize = msg.localMapSize;
    }
    else {
      resolved.localMapSize = 0
    }

    if (msg.localScanMapSize !== undefined) {
      resolved.localScanMapSize = msg.localScanMapSize;
    }
    else {
      resolved.localScanMapSize = 0
    }

    if (msg.localKeyFrames !== undefined) {
      resolved.localKeyFrames = msg.localKeyFrames;
    }
    else {
      resolved.localKeyFrames = 0
    }

    if (msg.localBundleOutliers !== undefined) {
      resolved.localBundleOutliers = msg.localBundleOutliers;
    }
    else {
      resolved.localBundleOutliers = 0
    }

    if (msg.localBundleConstraints !== undefined) {
      resolved.localBundleConstraints = msg.localBundleConstraints;
    }
    else {
      resolved.localBundleConstraints = 0
    }

    if (msg.localBundleTime !== undefined) {
      resolved.localBundleTime = msg.localBundleTime;
    }
    else {
      resolved.localBundleTime = 0.0
    }

    if (msg.keyFrameAdded !== undefined) {
      resolved.keyFrameAdded = msg.keyFrameAdded;
    }
    else {
      resolved.keyFrameAdded = false
    }

    if (msg.timeEstimation !== undefined) {
      resolved.timeEstimation = msg.timeEstimation;
    }
    else {
      resolved.timeEstimation = 0.0
    }

    if (msg.timeParticleFiltering !== undefined) {
      resolved.timeParticleFiltering = msg.timeParticleFiltering;
    }
    else {
      resolved.timeParticleFiltering = 0.0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = 0.0
    }

    if (msg.interval !== undefined) {
      resolved.interval = msg.interval;
    }
    else {
      resolved.interval = 0.0
    }

    if (msg.distanceTravelled !== undefined) {
      resolved.distanceTravelled = msg.distanceTravelled;
    }
    else {
      resolved.distanceTravelled = 0.0
    }

    if (msg.memoryUsage !== undefined) {
      resolved.memoryUsage = msg.memoryUsage;
    }
    else {
      resolved.memoryUsage = 0
    }

    if (msg.gravityRollError !== undefined) {
      resolved.gravityRollError = msg.gravityRollError;
    }
    else {
      resolved.gravityRollError = 0.0
    }

    if (msg.gravityPitchError !== undefined) {
      resolved.gravityPitchError = msg.gravityPitchError;
    }
    else {
      resolved.gravityPitchError = 0.0
    }

    if (msg.localBundleIds !== undefined) {
      resolved.localBundleIds = msg.localBundleIds;
    }
    else {
      resolved.localBundleIds = []
    }

    if (msg.localBundleModels !== undefined) {
      resolved.localBundleModels = new Array(msg.localBundleModels.length);
      for (let i = 0; i < resolved.localBundleModels.length; ++i) {
        resolved.localBundleModels[i] = CameraModels.Resolve(msg.localBundleModels[i]);
      }
    }
    else {
      resolved.localBundleModels = []
    }

    if (msg.localBundlePoses !== undefined) {
      resolved.localBundlePoses = new Array(msg.localBundlePoses.length);
      for (let i = 0; i < resolved.localBundlePoses.length; ++i) {
        resolved.localBundlePoses[i] = geometry_msgs.msg.Pose.Resolve(msg.localBundlePoses[i]);
      }
    }
    else {
      resolved.localBundlePoses = []
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.transformFiltered !== undefined) {
      resolved.transformFiltered = geometry_msgs.msg.Transform.Resolve(msg.transformFiltered)
    }
    else {
      resolved.transformFiltered = new geometry_msgs.msg.Transform()
    }

    if (msg.transformGroundTruth !== undefined) {
      resolved.transformGroundTruth = geometry_msgs.msg.Transform.Resolve(msg.transformGroundTruth)
    }
    else {
      resolved.transformGroundTruth = new geometry_msgs.msg.Transform()
    }

    if (msg.guess !== undefined) {
      resolved.guess = geometry_msgs.msg.Transform.Resolve(msg.guess)
    }
    else {
      resolved.guess = new geometry_msgs.msg.Transform()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.wordsKeys !== undefined) {
      resolved.wordsKeys = msg.wordsKeys;
    }
    else {
      resolved.wordsKeys = []
    }

    if (msg.wordsValues !== undefined) {
      resolved.wordsValues = new Array(msg.wordsValues.length);
      for (let i = 0; i < resolved.wordsValues.length; ++i) {
        resolved.wordsValues[i] = KeyPoint.Resolve(msg.wordsValues[i]);
      }
    }
    else {
      resolved.wordsValues = []
    }

    if (msg.wordMatches !== undefined) {
      resolved.wordMatches = msg.wordMatches;
    }
    else {
      resolved.wordMatches = []
    }

    if (msg.wordInliers !== undefined) {
      resolved.wordInliers = msg.wordInliers;
    }
    else {
      resolved.wordInliers = []
    }

    if (msg.localMapKeys !== undefined) {
      resolved.localMapKeys = msg.localMapKeys;
    }
    else {
      resolved.localMapKeys = []
    }

    if (msg.localMapValues !== undefined) {
      resolved.localMapValues = new Array(msg.localMapValues.length);
      for (let i = 0; i < resolved.localMapValues.length; ++i) {
        resolved.localMapValues[i] = Point3f.Resolve(msg.localMapValues[i]);
      }
    }
    else {
      resolved.localMapValues = []
    }

    if (msg.localScanMap !== undefined) {
      resolved.localScanMap = sensor_msgs.msg.PointCloud2.Resolve(msg.localScanMap)
    }
    else {
      resolved.localScanMap = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.refCorners !== undefined) {
      resolved.refCorners = new Array(msg.refCorners.length);
      for (let i = 0; i < resolved.refCorners.length; ++i) {
        resolved.refCorners[i] = Point2f.Resolve(msg.refCorners[i]);
      }
    }
    else {
      resolved.refCorners = []
    }

    if (msg.newCorners !== undefined) {
      resolved.newCorners = new Array(msg.newCorners.length);
      for (let i = 0; i < resolved.newCorners.length; ++i) {
        resolved.newCorners[i] = Point2f.Resolve(msg.newCorners[i]);
      }
    }
    else {
      resolved.newCorners = []
    }

    if (msg.cornerInliers !== undefined) {
      resolved.cornerInliers = msg.cornerInliers;
    }
    else {
      resolved.cornerInliers = []
    }

    return resolved;
    }
};

module.exports = OdomInfo;
