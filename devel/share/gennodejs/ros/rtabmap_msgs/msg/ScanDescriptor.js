// Auto-generated. Do not edit!

// (in-package rtabmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GlobalDescriptor = require('./GlobalDescriptor.js');
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ScanDescriptor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.scan = null;
      this.scan_cloud = null;
      this.global_descriptor = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('scan')) {
        this.scan = initObj.scan
      }
      else {
        this.scan = new sensor_msgs.msg.LaserScan();
      }
      if (initObj.hasOwnProperty('scan_cloud')) {
        this.scan_cloud = initObj.scan_cloud
      }
      else {
        this.scan_cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('global_descriptor')) {
        this.global_descriptor = initObj.global_descriptor
      }
      else {
        this.global_descriptor = new GlobalDescriptor();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScanDescriptor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [scan]
    bufferOffset = sensor_msgs.msg.LaserScan.serialize(obj.scan, buffer, bufferOffset);
    // Serialize message field [scan_cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.scan_cloud, buffer, bufferOffset);
    // Serialize message field [global_descriptor]
    bufferOffset = GlobalDescriptor.serialize(obj.global_descriptor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScanDescriptor
    let len;
    let data = new ScanDescriptor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [scan]
    data.scan = sensor_msgs.msg.LaserScan.deserialize(buffer, bufferOffset);
    // Deserialize message field [scan_cloud]
    data.scan_cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_descriptor]
    data.global_descriptor = GlobalDescriptor.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.LaserScan.getMessageSize(object.scan);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.scan_cloud);
    length += GlobalDescriptor.getMessageSize(object.global_descriptor);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rtabmap_msgs/ScanDescriptor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e76f45a9fe00fd5492368db8040ccbec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    Header header
    
    # scan or scan_cloud is set
    sensor_msgs/LaserScan scan
    sensor_msgs/PointCloud2 scan_cloud
    
    GlobalDescriptor global_descriptor
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
    string frame_id
    
    ================================================================================
    MSG: sensor_msgs/LaserScan
    # Single scan from a planar laser range-finder
    #
    # If you have another ranging device with different behavior (e.g. a sonar
    # array), please find or create a different message, since applications
    # will make fairly laser-specific assumptions about this data
    
    Header header            # timestamp in the header is the acquisition time of 
                             # the first ray in the scan.
                             #
                             # in frame frame_id, angles are measured around 
                             # the positive Z axis (counterclockwise, if Z is up)
                             # with zero angle being forward along the x axis
                             
    float32 angle_min        # start angle of the scan [rad]
    float32 angle_max        # end angle of the scan [rad]
    float32 angle_increment  # angular distance between measurements [rad]
    
    float32 time_increment   # time between measurements [seconds] - if your scanner
                             # is moving, this will be used in interpolating position
                             # of 3d points
    float32 scan_time        # time between scans [seconds]
    
    float32 range_min        # minimum range value [m]
    float32 range_max        # maximum range value [m]
    
    float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
    float32[] intensities    # intensity data [device-specific units].  If your
                             # device does not provide intensities, please leave
                             # the array empty.
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: rtabmap_msgs/GlobalDescriptor
    
    Header header
    
    # compressed global descriptor
    # use rtabmap::util3d::uncompressData() from "rtabmap/core/util3d.h"
    int32 type
    uint8[] info
    uint8[] data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScanDescriptor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.scan !== undefined) {
      resolved.scan = sensor_msgs.msg.LaserScan.Resolve(msg.scan)
    }
    else {
      resolved.scan = new sensor_msgs.msg.LaserScan()
    }

    if (msg.scan_cloud !== undefined) {
      resolved.scan_cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.scan_cloud)
    }
    else {
      resolved.scan_cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.global_descriptor !== undefined) {
      resolved.global_descriptor = GlobalDescriptor.Resolve(msg.global_descriptor)
    }
    else {
      resolved.global_descriptor = new GlobalDescriptor()
    }

    return resolved;
    }
};

module.exports = ScanDescriptor;
