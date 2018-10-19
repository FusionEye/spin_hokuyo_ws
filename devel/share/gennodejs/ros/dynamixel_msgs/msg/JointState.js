// Auto-generated. Do not edit!

// (in-package dynamixel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.motor_ids = null;
      this.motor_temps = null;
      this.goal_pos = null;
      this.current_pos = null;
      this.error = null;
      this.velocity = null;
      this.load = null;
      this.is_moving = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('motor_ids')) {
        this.motor_ids = initObj.motor_ids
      }
      else {
        this.motor_ids = [];
      }
      if (initObj.hasOwnProperty('motor_temps')) {
        this.motor_temps = initObj.motor_temps
      }
      else {
        this.motor_temps = [];
      }
      if (initObj.hasOwnProperty('goal_pos')) {
        this.goal_pos = initObj.goal_pos
      }
      else {
        this.goal_pos = 0.0;
      }
      if (initObj.hasOwnProperty('current_pos')) {
        this.current_pos = initObj.current_pos
      }
      else {
        this.current_pos = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = 0.0;
      }
      if (initObj.hasOwnProperty('is_moving')) {
        this.is_moving = initObj.is_moving
      }
      else {
        this.is_moving = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [motor_ids]
    bufferOffset = _arraySerializer.int32(obj.motor_ids, buffer, bufferOffset, null);
    // Serialize message field [motor_temps]
    bufferOffset = _arraySerializer.int32(obj.motor_temps, buffer, bufferOffset, null);
    // Serialize message field [goal_pos]
    bufferOffset = _serializer.float64(obj.goal_pos, buffer, bufferOffset);
    // Serialize message field [current_pos]
    bufferOffset = _serializer.float64(obj.current_pos, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float64(obj.error, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [load]
    bufferOffset = _serializer.float64(obj.load, buffer, bufferOffset);
    // Serialize message field [is_moving]
    bufferOffset = _serializer.bool(obj.is_moving, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointState
    let len;
    let data = new JointState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motor_ids]
    data.motor_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor_temps]
    data.motor_temps = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [goal_pos]
    data.goal_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_pos]
    data.current_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [load]
    data.load = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_moving]
    data.is_moving = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += 4 * object.motor_ids.length;
    length += 4 * object.motor_temps.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dynamixel_msgs/JointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b8449320cde76616338e2539db27c32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string name         # joint name
    int32[] motor_ids   # motor ids controlling this joint
    int32[] motor_temps # motor temperatures, same order as motor_ids
    
    float64 goal_pos    # commanded position (in radians)
    float64 current_pos # current joint position (in radians)
    float64 error       # error between commanded and current positions (in radians)
    float64 velocity    # current joint speed (in radians per second)
    float64 load        # current load
    bool is_moving      # is joint currently in motion
    
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.motor_ids !== undefined) {
      resolved.motor_ids = msg.motor_ids;
    }
    else {
      resolved.motor_ids = []
    }

    if (msg.motor_temps !== undefined) {
      resolved.motor_temps = msg.motor_temps;
    }
    else {
      resolved.motor_temps = []
    }

    if (msg.goal_pos !== undefined) {
      resolved.goal_pos = msg.goal_pos;
    }
    else {
      resolved.goal_pos = 0.0
    }

    if (msg.current_pos !== undefined) {
      resolved.current_pos = msg.current_pos;
    }
    else {
      resolved.current_pos = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.load !== undefined) {
      resolved.load = msg.load;
    }
    else {
      resolved.load = 0.0
    }

    if (msg.is_moving !== undefined) {
      resolved.is_moving = msg.is_moving;
    }
    else {
      resolved.is_moving = false
    }

    return resolved;
    }
};

module.exports = JointState;
