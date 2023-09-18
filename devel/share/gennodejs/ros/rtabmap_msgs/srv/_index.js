
"use strict";

let DetectMoreLoopClosures = require('./DetectMoreLoopClosures.js')
let GetMap = require('./GetMap.js')
let AddLink = require('./AddLink.js')
let ResetPose = require('./ResetPose.js')
let PublishMap = require('./PublishMap.js')
let GetMap2 = require('./GetMap2.js')
let GetPlan = require('./GetPlan.js')
let GlobalBundleAdjustment = require('./GlobalBundleAdjustment.js')
let SetGoal = require('./SetGoal.js')
let SetLabel = require('./SetLabel.js')
let CleanupLocalGrids = require('./CleanupLocalGrids.js')
let GetNodesInRadius = require('./GetNodesInRadius.js')
let LoadDatabase = require('./LoadDatabase.js')
let GetNodeData = require('./GetNodeData.js')
let RemoveLabel = require('./RemoveLabel.js')
let ListLabels = require('./ListLabels.js')

module.exports = {
  DetectMoreLoopClosures: DetectMoreLoopClosures,
  GetMap: GetMap,
  AddLink: AddLink,
  ResetPose: ResetPose,
  PublishMap: PublishMap,
  GetMap2: GetMap2,
  GetPlan: GetPlan,
  GlobalBundleAdjustment: GlobalBundleAdjustment,
  SetGoal: SetGoal,
  SetLabel: SetLabel,
  CleanupLocalGrids: CleanupLocalGrids,
  GetNodesInRadius: GetNodesInRadius,
  LoadDatabase: LoadDatabase,
  GetNodeData: GetNodeData,
  RemoveLabel: RemoveLabel,
  ListLabels: ListLabels,
};
