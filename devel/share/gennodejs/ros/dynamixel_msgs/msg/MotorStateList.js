// Auto-generated. Do not edit!

// (in-package dynamixel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorState = require('./MotorState.js');

//-----------------------------------------------------------

class MotorStateList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_states = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_states')) {
        this.motor_states = initObj.motor_states
      }
      else {
        this.motor_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStateList
    // Serialize message field [motor_states]
    // Serialize the length for message field [motor_states]
    bufferOffset = _serializer.uint32(obj.motor_states.length, buffer, bufferOffset);
    obj.motor_states.forEach((val) => {
      bufferOffset = MotorState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStateList
    let len;
    let data = new MotorStateList(null);
    // Deserialize message field [motor_states]
    // Deserialize array length for message field [motor_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motor_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motor_states[i] = MotorState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 49 * object.motor_states.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dynamixel_msgs/MotorStateList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e94ccf6563ca78afce19eb097f9343c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorState[] motor_states
    
    ================================================================================
    MSG: dynamixel_msgs/MotorState
    float64 timestamp   # motor state is at this time
    int32 id            # motor id
    int32 goal          # commanded position (in encoder units)
    int32 position      # current position (in encoder units)
    int32 error         # difference between current and goal positions
    int32 speed         # current speed (0.111 rpm per unit)
    float64 load        # current load - ratio of applied torque over maximum torque
    float64 voltage     # current voltage (V)
    int32 temperature   # current temperature (degrees Celsius)
    bool moving         # whether the motor is currently in motion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStateList(null);
    if (msg.motor_states !== undefined) {
      resolved.motor_states = new Array(msg.motor_states.length);
      for (let i = 0; i < resolved.motor_states.length; ++i) {
        resolved.motor_states[i] = MotorState.Resolve(msg.motor_states[i]);
      }
    }
    else {
      resolved.motor_states = []
    }

    return resolved;
    }
};

module.exports = MotorStateList;
