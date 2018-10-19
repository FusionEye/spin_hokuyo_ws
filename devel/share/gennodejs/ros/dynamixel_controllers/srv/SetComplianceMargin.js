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

class SetComplianceMarginRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.margin = null;
    }
    else {
      if (initObj.hasOwnProperty('margin')) {
        this.margin = initObj.margin
      }
      else {
        this.margin = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetComplianceMarginRequest
    // Serialize message field [margin]
    bufferOffset = _serializer.uint8(obj.margin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetComplianceMarginRequest
    let len;
    let data = new SetComplianceMarginRequest(null);
    // Deserialize message field [margin]
    data.margin = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/SetComplianceMarginRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'daacbf1c0642fe923f2dfb9217a97b81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    uint8 margin
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetComplianceMarginRequest(null);
    if (msg.margin !== undefined) {
      resolved.margin = msg.margin;
    }
    else {
      resolved.margin = 0
    }

    return resolved;
    }
};

class SetComplianceMarginResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetComplianceMarginResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetComplianceMarginResponse
    let len;
    let data = new SetComplianceMarginResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/SetComplianceMarginResponse';
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
    const resolved = new SetComplianceMarginResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetComplianceMarginRequest,
  Response: SetComplianceMarginResponse,
  md5sum() { return 'daacbf1c0642fe923f2dfb9217a97b81'; },
  datatype() { return 'dynamixel_controllers/SetComplianceMargin'; }
};
