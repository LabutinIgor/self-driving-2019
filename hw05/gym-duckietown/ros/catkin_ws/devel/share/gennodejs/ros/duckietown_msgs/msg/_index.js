
"use strict";

let WheelsCmdStamped = require('./WheelsCmdStamped.js');
let ObstacleProjectedDetection = require('./ObstacleProjectedDetection.js');
let ThetaDotSample = require('./ThetaDotSample.js');
let SegmentList = require('./SegmentList.js');
let CoordinationClearance = require('./CoordinationClearance.js');
let Pose2DStamped = require('./Pose2DStamped.js');
let Rect = require('./Rect.js');
let SourceTargetNodes = require('./SourceTargetNodes.js');
let LEDDetectionArray = require('./LEDDetectionArray.js');
let LEDInterpreter = require('./LEDInterpreter.js');
let SignalsDetection = require('./SignalsDetection.js');
let Trajectory = require('./Trajectory.js');
let Rects = require('./Rects.js');
let AprilTagDetection = require('./AprilTagDetection.js');
let Segment = require('./Segment.js');
let CarControl = require('./CarControl.js');
let VehiclePose = require('./VehiclePose.js');
let AntiInstagramHealth = require('./AntiInstagramHealth.js');
let VehicleCorners = require('./VehicleCorners.js');
let AprilTagDetectionArray = require('./AprilTagDetectionArray.js');
let StreetNameDetection = require('./StreetNameDetection.js');
let AprilTagsWithInfos = require('./AprilTagsWithInfos.js');
let Twist2DStamped = require('./Twist2DStamped.js');
let StopLineReading = require('./StopLineReading.js');
let SceneSegments = require('./SceneSegments.js');
let Vsample = require('./Vsample.js');
let ObstacleImageDetectionList = require('./ObstacleImageDetectionList.js');
let WheelsCmd = require('./WheelsCmd.js');
let ObstacleImageDetection = require('./ObstacleImageDetection.js');
let ObstacleProjectedDetectionList = require('./ObstacleProjectedDetectionList.js');
let KinematicsParameters = require('./KinematicsParameters.js');
let Vector2D = require('./Vector2D.js');
let LEDDetection = require('./LEDDetection.js');
let StreetNames = require('./StreetNames.js');
let AntiInstagramTransform = require('./AntiInstagramTransform.js');
let KinematicsWeights = require('./KinematicsWeights.js');
let CoordinationSignal = require('./CoordinationSignal.js');
let LEDDetectionDebugInfo = require('./LEDDetectionDebugInfo.js');
let Pixel = require('./Pixel.js');
let ObstacleType = require('./ObstacleType.js');
let BoolStamped = require('./BoolStamped.js');
let FSMState = require('./FSMState.js');
let TagInfo = require('./TagInfo.js');
let DuckieSensor = require('./DuckieSensor.js');
let LanePose = require('./LanePose.js');

module.exports = {
  WheelsCmdStamped: WheelsCmdStamped,
  ObstacleProjectedDetection: ObstacleProjectedDetection,
  ThetaDotSample: ThetaDotSample,
  SegmentList: SegmentList,
  CoordinationClearance: CoordinationClearance,
  Pose2DStamped: Pose2DStamped,
  Rect: Rect,
  SourceTargetNodes: SourceTargetNodes,
  LEDDetectionArray: LEDDetectionArray,
  LEDInterpreter: LEDInterpreter,
  SignalsDetection: SignalsDetection,
  Trajectory: Trajectory,
  Rects: Rects,
  AprilTagDetection: AprilTagDetection,
  Segment: Segment,
  CarControl: CarControl,
  VehiclePose: VehiclePose,
  AntiInstagramHealth: AntiInstagramHealth,
  VehicleCorners: VehicleCorners,
  AprilTagDetectionArray: AprilTagDetectionArray,
  StreetNameDetection: StreetNameDetection,
  AprilTagsWithInfos: AprilTagsWithInfos,
  Twist2DStamped: Twist2DStamped,
  StopLineReading: StopLineReading,
  SceneSegments: SceneSegments,
  Vsample: Vsample,
  ObstacleImageDetectionList: ObstacleImageDetectionList,
  WheelsCmd: WheelsCmd,
  ObstacleImageDetection: ObstacleImageDetection,
  ObstacleProjectedDetectionList: ObstacleProjectedDetectionList,
  KinematicsParameters: KinematicsParameters,
  Vector2D: Vector2D,
  LEDDetection: LEDDetection,
  StreetNames: StreetNames,
  AntiInstagramTransform: AntiInstagramTransform,
  KinematicsWeights: KinematicsWeights,
  CoordinationSignal: CoordinationSignal,
  LEDDetectionDebugInfo: LEDDetectionDebugInfo,
  Pixel: Pixel,
  ObstacleType: ObstacleType,
  BoolStamped: BoolStamped,
  FSMState: FSMState,
  TagInfo: TagInfo,
  DuckieSensor: DuckieSensor,
  LanePose: LanePose,
};
