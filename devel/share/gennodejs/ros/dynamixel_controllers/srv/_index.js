
"use strict";

let RestartController = require('./RestartController.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')
let StartController = require('./StartController.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let SetSpeed = require('./SetSpeed.js')
let SetComplianceSlope = require('./SetComplianceSlope.js')
let TorqueEnable = require('./TorqueEnable.js')
let StopController = require('./StopController.js')
let SetCompliancePunch = require('./SetCompliancePunch.js')

module.exports = {
  RestartController: RestartController,
  SetTorqueLimit: SetTorqueLimit,
  StartController: StartController,
  SetComplianceMargin: SetComplianceMargin,
  SetSpeed: SetSpeed,
  SetComplianceSlope: SetComplianceSlope,
  TorqueEnable: TorqueEnable,
  StopController: StopController,
  SetCompliancePunch: SetCompliancePunch,
};
