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

class SetCompliancePunchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.punch = null;
    }
    else {
      if (initObj.hasOwnProperty('punch')) {
        this.punch = initObj.punch
      }
      else {
        this.punch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCompliancePunchRequest
    // Serialize message field [punch]
    bufferOffset = _serializer.uint8(obj.punch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCompliancePunchRequest
    let len;
    let data = new SetCompliancePunchRequest(null);
    // Deserialize message field [punch]
    data.punch = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/SetCompliancePunchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f1db06d3f143058321215213d1c3bef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    uint8 punch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCompliancePunchRequest(null);
    if (msg.punch !== undefined) {
      resolved.punch = msg.punch;
    }
    else {
      resolved.punch = 0
    }

    return resolved;
    }
};

class SetCompliancePunchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCompliancePunchResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCompliancePunchResponse
    let len;
    let data = new SetCompliancePunchResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/SetCompliancePunchResponse';
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
    const resolved = new SetCompliancePunchResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetCompliancePunchRequest,
  Response: SetCompliancePunchResponse,
  md5sum() { return '6f1db06d3f143058321215213d1c3bef'; },
  datatype() { return 'dynamixel_controllers/SetCompliancePunch'; }
};
