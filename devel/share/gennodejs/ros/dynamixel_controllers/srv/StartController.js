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

class StartControllerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.port_name = null;
      this.package_path = null;
      this.module_name = null;
      this.class_name = null;
      this.controller_name = null;
      this.dependencies = null;
    }
    else {
      if (initObj.hasOwnProperty('port_name')) {
        this.port_name = initObj.port_name
      }
      else {
        this.port_name = '';
      }
      if (initObj.hasOwnProperty('package_path')) {
        this.package_path = initObj.package_path
      }
      else {
        this.package_path = '';
      }
      if (initObj.hasOwnProperty('module_name')) {
        this.module_name = initObj.module_name
      }
      else {
        this.module_name = '';
      }
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = '';
      }
      if (initObj.hasOwnProperty('controller_name')) {
        this.controller_name = initObj.controller_name
      }
      else {
        this.controller_name = '';
      }
      if (initObj.hasOwnProperty('dependencies')) {
        this.dependencies = initObj.dependencies
      }
      else {
        this.dependencies = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartControllerRequest
    // Serialize message field [port_name]
    bufferOffset = _serializer.string(obj.port_name, buffer, bufferOffset);
    // Serialize message field [package_path]
    bufferOffset = _serializer.string(obj.package_path, buffer, bufferOffset);
    // Serialize message field [module_name]
    bufferOffset = _serializer.string(obj.module_name, buffer, bufferOffset);
    // Serialize message field [class_name]
    bufferOffset = _serializer.string(obj.class_name, buffer, bufferOffset);
    // Serialize message field [controller_name]
    bufferOffset = _serializer.string(obj.controller_name, buffer, bufferOffset);
    // Serialize message field [dependencies]
    bufferOffset = _arraySerializer.string(obj.dependencies, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartControllerRequest
    let len;
    let data = new StartControllerRequest(null);
    // Deserialize message field [port_name]
    data.port_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [package_path]
    data.package_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [module_name]
    data.module_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [class_name]
    data.class_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [controller_name]
    data.controller_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dependencies]
    data.dependencies = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.port_name.length;
    length += object.package_path.length;
    length += object.module_name.length;
    length += object.class_name.length;
    length += object.controller_name.length;
    object.dependencies.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/StartControllerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7785d708c83a180befd2fe3450dd9d41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string port_name
    string package_path
    string module_name
    string class_name
    string controller_name
    string[] dependencies
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartControllerRequest(null);
    if (msg.port_name !== undefined) {
      resolved.port_name = msg.port_name;
    }
    else {
      resolved.port_name = ''
    }

    if (msg.package_path !== undefined) {
      resolved.package_path = msg.package_path;
    }
    else {
      resolved.package_path = ''
    }

    if (msg.module_name !== undefined) {
      resolved.module_name = msg.module_name;
    }
    else {
      resolved.module_name = ''
    }

    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = ''
    }

    if (msg.controller_name !== undefined) {
      resolved.controller_name = msg.controller_name;
    }
    else {
      resolved.controller_name = ''
    }

    if (msg.dependencies !== undefined) {
      resolved.dependencies = msg.dependencies;
    }
    else {
      resolved.dependencies = []
    }

    return resolved;
    }
};

class StartControllerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.reason = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('reason')) {
        this.reason = initObj.reason
      }
      else {
        this.reason = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartControllerResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.string(obj.reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartControllerResponse
    let len;
    let data = new StartControllerResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.reason.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dynamixel_controllers/StartControllerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4d50a34d34f18de48e2436ff1472594';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string reason
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartControllerResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.reason !== undefined) {
      resolved.reason = msg.reason;
    }
    else {
      resolved.reason = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: StartControllerRequest,
  Response: StartControllerResponse,
  md5sum() { return '94c76c2df56346fcaa2611bdac54f434'; },
  datatype() { return 'dynamixel_controllers/StartController'; }
};
