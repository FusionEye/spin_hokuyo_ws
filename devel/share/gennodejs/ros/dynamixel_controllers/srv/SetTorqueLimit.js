// Auto-generated. Do not edit!

// (in-package dynamixel_controllers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTorqueLimitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.torque_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('torque_limit')) {
        this.torque_limit = initObj.torque_limit
      }
      else {
        this.torque_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTorqueLimitRequest
    // Serialize message field [torque_limit]
    bufferOffset = _serializer.float64(obj.torque_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTorqueLimitRequest
    let len;
    let data = new SetTorqueLimitRequest(null);
    // Deserialize message field [torque_limit]
    data.torque_limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/SetTorqueLimitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ac67170532bb79d95db2a425915bbd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float64 torque_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTorqueLimitRequest(null);
    if (msg.torque_limit !== undefined) {
      resolved.torque_limit = msg.torque_limit;
    }
    else {
      resolved.torque_limit = 0.0
    }

    return resolved;
    }
};

class SetTorqueLimitResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTorqueLimitResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTorqueLimitResponse
    let len;
    let data = new SetTorqueLimitResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/SetTorqueLimitResponse';
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
    const resolved = new SetTorqueLimitResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetTorqueLimitRequest,
  Response: SetTorqueLimitResponse,
  md5sum() { return '7ac67170532bb79d95db2a425915bbd6'; },
  datatype() { return 'dynamixel_controllers/SetTorqueLimit'; }
};
