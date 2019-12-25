// Auto-generated. Do not edit!

// (in-package duckietown_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DuckieSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.fvalue = null;
      this.is_analog = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('fvalue')) {
        this.fvalue = initObj.fvalue
      }
      else {
        this.fvalue = 0.0;
      }
      if (initObj.hasOwnProperty('is_analog')) {
        this.is_analog = initObj.is_analog
      }
      else {
        this.is_analog = false;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DuckieSensor
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    // Serialize message field [fvalue]
    bufferOffset = _serializer.float32(obj.fvalue, buffer, bufferOffset);
    // Serialize message field [is_analog]
    bufferOffset = _serializer.bool(obj.is_analog, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DuckieSensor
    let len;
    let data = new DuckieSensor(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [fvalue]
    data.fvalue = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_analog]
    data.is_analog = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'duckietown_msgs/DuckieSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3337f0684bf5f2b309fb6921917219f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Sensors send value and type messages
    # For analog sensors value = 0..4097 and fvalue = 0.0..1.0
    # For digital sensors value= 0..1 and fvalue = 0.0
    uint16 value
    float32 fvalue
    bool is_analog
    string name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DuckieSensor(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.fvalue !== undefined) {
      resolved.fvalue = msg.fvalue;
    }
    else {
      resolved.fvalue = 0.0
    }

    if (msg.is_analog !== undefined) {
      resolved.is_analog = msg.is_analog;
    }
    else {
      resolved.is_analog = false
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

module.exports = DuckieSensor;
