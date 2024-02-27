// Generated by gencpp from file rtabmap_msgs/NodeData.msg
// DO NOT EDIT!


#ifndef RTABMAP_MSGS_MESSAGE_NODEDATA_H
#define RTABMAP_MSGS_MESSAGE_NODEDATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Pose.h>
#include <rtabmap_msgs/GPS.h>
#include <geometry_msgs/Transform.h>
#include <geometry_msgs/Transform.h>
#include <rtabmap_msgs/Point3f.h>
#include <rtabmap_msgs/KeyPoint.h>
#include <rtabmap_msgs/Point3f.h>
#include <rtabmap_msgs/GlobalDescriptor.h>
#include <rtabmap_msgs/EnvSensor.h>

namespace rtabmap_msgs
{
template <class ContainerAllocator>
struct NodeData_
{
  typedef NodeData_<ContainerAllocator> Type;

  NodeData_()
    : id(0)
    , mapId(0)
    , weight(0)
    , stamp(0.0)
    , label()
    , pose()
    , groundTruthPose()
    , gps()
    , image()
    , depth()
    , fx()
    , fy()
    , cx()
    , cy()
    , width()
    , height()
    , baseline()
    , localTransform()
    , laserScan()
    , laserScanMaxPts(0)
    , laserScanMaxRange(0.0)
    , laserScanFormat(0)
    , laserScanLocalTransform()
    , userData()
    , grid_ground()
    , grid_obstacles()
    , grid_empty_cells()
    , grid_cell_size(0.0)
    , grid_view_point()
    , wordIdKeys()
    , wordIdValues()
    , wordKpts()
    , wordPts()
    , wordDescriptors()
    , globalDescriptors()
    , env_sensors()  {
    }
  NodeData_(const ContainerAllocator& _alloc)
    : id(0)
    , mapId(0)
    , weight(0)
    , stamp(0.0)
    , label(_alloc)
    , pose(_alloc)
    , groundTruthPose(_alloc)
    , gps(_alloc)
    , image(_alloc)
    , depth(_alloc)
    , fx(_alloc)
    , fy(_alloc)
    , cx(_alloc)
    , cy(_alloc)
    , width(_alloc)
    , height(_alloc)
    , baseline(_alloc)
    , localTransform(_alloc)
    , laserScan(_alloc)
    , laserScanMaxPts(0)
    , laserScanMaxRange(0.0)
    , laserScanFormat(0)
    , laserScanLocalTransform(_alloc)
    , userData(_alloc)
    , grid_ground(_alloc)
    , grid_obstacles(_alloc)
    , grid_empty_cells(_alloc)
    , grid_cell_size(0.0)
    , grid_view_point(_alloc)
    , wordIdKeys(_alloc)
    , wordIdValues(_alloc)
    , wordKpts(_alloc)
    , wordPts(_alloc)
    , wordDescriptors(_alloc)
    , globalDescriptors(_alloc)
    , env_sensors(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef int32_t _mapId_type;
  _mapId_type mapId;

   typedef int32_t _weight_type;
  _weight_type weight;

   typedef double _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _label_type;
  _label_type label;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _groundTruthPose_type;
  _groundTruthPose_type groundTruthPose;

   typedef  ::rtabmap_msgs::GPS_<ContainerAllocator>  _gps_type;
  _gps_type gps;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _image_type;
  _image_type image;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _depth_type;
  _depth_type depth;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _fx_type;
  _fx_type fx;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _fy_type;
  _fy_type fy;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _cx_type;
  _cx_type cx;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _cy_type;
  _cy_type cy;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _width_type;
  _width_type width;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _height_type;
  _height_type height;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _baseline_type;
  _baseline_type baseline;

   typedef std::vector< ::geometry_msgs::Transform_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Transform_<ContainerAllocator> >> _localTransform_type;
  _localTransform_type localTransform;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _laserScan_type;
  _laserScan_type laserScan;

   typedef int32_t _laserScanMaxPts_type;
  _laserScanMaxPts_type laserScanMaxPts;

   typedef float _laserScanMaxRange_type;
  _laserScanMaxRange_type laserScanMaxRange;

   typedef int32_t _laserScanFormat_type;
  _laserScanFormat_type laserScanFormat;

   typedef  ::geometry_msgs::Transform_<ContainerAllocator>  _laserScanLocalTransform_type;
  _laserScanLocalTransform_type laserScanLocalTransform;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _userData_type;
  _userData_type userData;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _grid_ground_type;
  _grid_ground_type grid_ground;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _grid_obstacles_type;
  _grid_obstacles_type grid_obstacles;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _grid_empty_cells_type;
  _grid_empty_cells_type grid_empty_cells;

   typedef float _grid_cell_size_type;
  _grid_cell_size_type grid_cell_size;

   typedef  ::rtabmap_msgs::Point3f_<ContainerAllocator>  _grid_view_point_type;
  _grid_view_point_type grid_view_point;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _wordIdKeys_type;
  _wordIdKeys_type wordIdKeys;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _wordIdValues_type;
  _wordIdValues_type wordIdValues;

   typedef std::vector< ::rtabmap_msgs::KeyPoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rtabmap_msgs::KeyPoint_<ContainerAllocator> >> _wordKpts_type;
  _wordKpts_type wordKpts;

   typedef std::vector< ::rtabmap_msgs::Point3f_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rtabmap_msgs::Point3f_<ContainerAllocator> >> _wordPts_type;
  _wordPts_type wordPts;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _wordDescriptors_type;
  _wordDescriptors_type wordDescriptors;

   typedef std::vector< ::rtabmap_msgs::GlobalDescriptor_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rtabmap_msgs::GlobalDescriptor_<ContainerAllocator> >> _globalDescriptors_type;
  _globalDescriptors_type globalDescriptors;

   typedef std::vector< ::rtabmap_msgs::EnvSensor_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rtabmap_msgs::EnvSensor_<ContainerAllocator> >> _env_sensors_type;
  _env_sensors_type env_sensors;





  typedef boost::shared_ptr< ::rtabmap_msgs::NodeData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rtabmap_msgs::NodeData_<ContainerAllocator> const> ConstPtr;

}; // struct NodeData_

typedef ::rtabmap_msgs::NodeData_<std::allocator<void> > NodeData;

typedef boost::shared_ptr< ::rtabmap_msgs::NodeData > NodeDataPtr;
typedef boost::shared_ptr< ::rtabmap_msgs::NodeData const> NodeDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rtabmap_msgs::NodeData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rtabmap_msgs::NodeData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rtabmap_msgs::NodeData_<ContainerAllocator1> & lhs, const ::rtabmap_msgs::NodeData_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.mapId == rhs.mapId &&
    lhs.weight == rhs.weight &&
    lhs.stamp == rhs.stamp &&
    lhs.label == rhs.label &&
    lhs.pose == rhs.pose &&
    lhs.groundTruthPose == rhs.groundTruthPose &&
    lhs.gps == rhs.gps &&
    lhs.image == rhs.image &&
    lhs.depth == rhs.depth &&
    lhs.fx == rhs.fx &&
    lhs.fy == rhs.fy &&
    lhs.cx == rhs.cx &&
    lhs.cy == rhs.cy &&
    lhs.width == rhs.width &&
    lhs.height == rhs.height &&
    lhs.baseline == rhs.baseline &&
    lhs.localTransform == rhs.localTransform &&
    lhs.laserScan == rhs.laserScan &&
    lhs.laserScanMaxPts == rhs.laserScanMaxPts &&
    lhs.laserScanMaxRange == rhs.laserScanMaxRange &&
    lhs.laserScanFormat == rhs.laserScanFormat &&
    lhs.laserScanLocalTransform == rhs.laserScanLocalTransform &&
    lhs.userData == rhs.userData &&
    lhs.grid_ground == rhs.grid_ground &&
    lhs.grid_obstacles == rhs.grid_obstacles &&
    lhs.grid_empty_cells == rhs.grid_empty_cells &&
    lhs.grid_cell_size == rhs.grid_cell_size &&
    lhs.grid_view_point == rhs.grid_view_point &&
    lhs.wordIdKeys == rhs.wordIdKeys &&
    lhs.wordIdValues == rhs.wordIdValues &&
    lhs.wordKpts == rhs.wordKpts &&
    lhs.wordPts == rhs.wordPts &&
    lhs.wordDescriptors == rhs.wordDescriptors &&
    lhs.globalDescriptors == rhs.globalDescriptors &&
    lhs.env_sensors == rhs.env_sensors;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rtabmap_msgs::NodeData_<ContainerAllocator1> & lhs, const ::rtabmap_msgs::NodeData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rtabmap_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rtabmap_msgs::NodeData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rtabmap_msgs::NodeData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rtabmap_msgs::NodeData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bbf7b81adbf2e3b56c6bae97e128cd38";
  }

  static const char* value(const ::rtabmap_msgs::NodeData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbbf7b81adbf2e3b5ULL;
  static const uint64_t static_value2 = 0x6c6bae97e128cd38ULL;
};

template<class ContainerAllocator>
struct DataType< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rtabmap_msgs/NodeData";
  }

  static const char* value(const ::rtabmap_msgs::NodeData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"int32 id\n"
"int32 mapId\n"
"int32 weight\n"
"float64 stamp\n"
"string label\n"
"\n"
"# Pose from odometry not corrected\n"
"geometry_msgs/Pose pose\n"
"\n"
"# Ground truth (optional)\n"
"geometry_msgs/Pose groundTruthPose\n"
"\n"
"# GPS (optional)\n"
"GPS gps\n"
"\n"
"# compressed image in /camera_link frame\n"
"# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"\n"
"uint8[] image\n"
"\n"
"# compressed depth image in /camera_link frame\n"
"# use rtabmap::util3d::uncompressImage() from \"rtabmap/core/util3d.h\"\n"
"uint8[] depth\n"
"\n"
"# Camera models\n"
"float32[] fx\n"
"float32[] fy\n"
"float32[] cx\n"
"float32[] cy\n"
"float32[] width\n"
"float32[] height\n"
"float32[] baseline\n"
"# local transform (/base_link -> /camera_link)\n"
"geometry_msgs/Transform[] localTransform\n"
"\n"
"# compressed 2D or 3D laser scan\n"
"# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"\n"
"uint8[] laserScan\n"
"int32 laserScanMaxPts\n"
"float32 laserScanMaxRange\n"
"int32 laserScanFormat\n"
"# local transform (/base_link -> /base_laser)\n"
"geometry_msgs/Transform laserScanLocalTransform\n"
"\n"
"# compressed user data\n"
"# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"\n"
"uint8[] userData\n"
"\n"
"# compressed occupancy grid\n"
"# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"\n"
"uint8[] grid_ground\n"
"uint8[] grid_obstacles\n"
"uint8[] grid_empty_cells\n"
"float32 grid_cell_size\n"
"Point3f grid_view_point\n"
"\n"
"# std::multimap<wordId, index>\n"
"# std::vector<cv::Keypoint>\n"
"# std::vector<cv::Point3f>\n"
"int32[] wordIdKeys\n"
"int32[] wordIdValues\n"
"KeyPoint[] wordKpts\n"
"Point3f[] wordPts\n"
"# compressed descriptors\n"
"# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"\n"
"uint8[] wordDescriptors\n"
"\n"
"GlobalDescriptor[] globalDescriptors\n"
"\n"
"EnvSensor[] env_sensors\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: rtabmap_msgs/GPS\n"
"\n"
"float64 stamp      # in seconds\n"
"float64 longitude  # DD format\n"
"float64 latitude   # DD format\n"
"float64 altitude   # in meters\n"
"float64 error      # in meters\n"
"float64 bearing    # North 0->360 deg\n"
"================================================================================\n"
"MSG: geometry_msgs/Transform\n"
"# This represents the transform between two coordinate frames in free space.\n"
"\n"
"Vector3 translation\n"
"Quaternion rotation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: rtabmap_msgs/Point3f\n"
"#class cv::Point3f\n"
"#{\n"
"#    float x;\n"
"#    float y;\n"
"#    float z;\n"
"#}\n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"================================================================================\n"
"MSG: rtabmap_msgs/KeyPoint\n"
"#class cv::KeyPoint\n"
"#{\n"
"#    Point2f pt;\n"
"#    float size;\n"
"#    float angle;\n"
"#    float response;\n"
"#    int octave;\n"
"#    int class_id;\n"
"#}\n"
"\n"
"Point2f pt\n"
"float32 size\n"
"float32 angle\n"
"float32 response\n"
"int32 octave\n"
"int32 class_id\n"
"================================================================================\n"
"MSG: rtabmap_msgs/Point2f\n"
"#class cv::Point2f\n"
"#{\n"
"#    float x;\n"
"#    float y;\n"
"#}\n"
"\n"
"float32 x\n"
"float32 y\n"
"================================================================================\n"
"MSG: rtabmap_msgs/GlobalDescriptor\n"
"\n"
"Header header\n"
"\n"
"# compressed global descriptor\n"
"# use rtabmap::util3d::uncompressData() from \"rtabmap/core/util3d.h\"\n"
"int32 type\n"
"uint8[] info\n"
"uint8[] data\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: rtabmap_msgs/EnvSensor\n"
"\n"
"Header header\n"
"\n"
"# EnvSensor\n"
"int32 type\n"
"float64 value\n"
;
  }

  static const char* value(const ::rtabmap_msgs::NodeData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.mapId);
      stream.next(m.weight);
      stream.next(m.stamp);
      stream.next(m.label);
      stream.next(m.pose);
      stream.next(m.groundTruthPose);
      stream.next(m.gps);
      stream.next(m.image);
      stream.next(m.depth);
      stream.next(m.fx);
      stream.next(m.fy);
      stream.next(m.cx);
      stream.next(m.cy);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.baseline);
      stream.next(m.localTransform);
      stream.next(m.laserScan);
      stream.next(m.laserScanMaxPts);
      stream.next(m.laserScanMaxRange);
      stream.next(m.laserScanFormat);
      stream.next(m.laserScanLocalTransform);
      stream.next(m.userData);
      stream.next(m.grid_ground);
      stream.next(m.grid_obstacles);
      stream.next(m.grid_empty_cells);
      stream.next(m.grid_cell_size);
      stream.next(m.grid_view_point);
      stream.next(m.wordIdKeys);
      stream.next(m.wordIdValues);
      stream.next(m.wordKpts);
      stream.next(m.wordPts);
      stream.next(m.wordDescriptors);
      stream.next(m.globalDescriptors);
      stream.next(m.env_sensors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NodeData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rtabmap_msgs::NodeData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rtabmap_msgs::NodeData_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "mapId: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mapId);
    s << indent << "weight: ";
    Printer<int32_t>::stream(s, indent + "  ", v.weight);
    s << indent << "stamp: ";
    Printer<double>::stream(s, indent + "  ", v.stamp);
    s << indent << "label: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.label);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "groundTruthPose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.groundTruthPose);
    s << indent << "gps: ";
    s << std::endl;
    Printer< ::rtabmap_msgs::GPS_<ContainerAllocator> >::stream(s, indent + "  ", v.gps);
    s << indent << "image[]" << std::endl;
    for (size_t i = 0; i < v.image.size(); ++i)
    {
      s << indent << "  image[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.image[i]);
    }
    s << indent << "depth[]" << std::endl;
    for (size_t i = 0; i < v.depth.size(); ++i)
    {
      s << indent << "  depth[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.depth[i]);
    }
    s << indent << "fx[]" << std::endl;
    for (size_t i = 0; i < v.fx.size(); ++i)
    {
      s << indent << "  fx[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.fx[i]);
    }
    s << indent << "fy[]" << std::endl;
    for (size_t i = 0; i < v.fy.size(); ++i)
    {
      s << indent << "  fy[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.fy[i]);
    }
    s << indent << "cx[]" << std::endl;
    for (size_t i = 0; i < v.cx.size(); ++i)
    {
      s << indent << "  cx[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.cx[i]);
    }
    s << indent << "cy[]" << std::endl;
    for (size_t i = 0; i < v.cy.size(); ++i)
    {
      s << indent << "  cy[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.cy[i]);
    }
    s << indent << "width[]" << std::endl;
    for (size_t i = 0; i < v.width.size(); ++i)
    {
      s << indent << "  width[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.width[i]);
    }
    s << indent << "height[]" << std::endl;
    for (size_t i = 0; i < v.height.size(); ++i)
    {
      s << indent << "  height[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.height[i]);
    }
    s << indent << "baseline[]" << std::endl;
    for (size_t i = 0; i < v.baseline.size(); ++i)
    {
      s << indent << "  baseline[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.baseline[i]);
    }
    s << indent << "localTransform[]" << std::endl;
    for (size_t i = 0; i < v.localTransform.size(); ++i)
    {
      s << indent << "  localTransform[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "    ", v.localTransform[i]);
    }
    s << indent << "laserScan[]" << std::endl;
    for (size_t i = 0; i < v.laserScan.size(); ++i)
    {
      s << indent << "  laserScan[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.laserScan[i]);
    }
    s << indent << "laserScanMaxPts: ";
    Printer<int32_t>::stream(s, indent + "  ", v.laserScanMaxPts);
    s << indent << "laserScanMaxRange: ";
    Printer<float>::stream(s, indent + "  ", v.laserScanMaxRange);
    s << indent << "laserScanFormat: ";
    Printer<int32_t>::stream(s, indent + "  ", v.laserScanFormat);
    s << indent << "laserScanLocalTransform: ";
    s << std::endl;
    Printer< ::geometry_msgs::Transform_<ContainerAllocator> >::stream(s, indent + "  ", v.laserScanLocalTransform);
    s << indent << "userData[]" << std::endl;
    for (size_t i = 0; i < v.userData.size(); ++i)
    {
      s << indent << "  userData[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.userData[i]);
    }
    s << indent << "grid_ground[]" << std::endl;
    for (size_t i = 0; i < v.grid_ground.size(); ++i)
    {
      s << indent << "  grid_ground[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.grid_ground[i]);
    }
    s << indent << "grid_obstacles[]" << std::endl;
    for (size_t i = 0; i < v.grid_obstacles.size(); ++i)
    {
      s << indent << "  grid_obstacles[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.grid_obstacles[i]);
    }
    s << indent << "grid_empty_cells[]" << std::endl;
    for (size_t i = 0; i < v.grid_empty_cells.size(); ++i)
    {
      s << indent << "  grid_empty_cells[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.grid_empty_cells[i]);
    }
    s << indent << "grid_cell_size: ";
    Printer<float>::stream(s, indent + "  ", v.grid_cell_size);
    s << indent << "grid_view_point: ";
    s << std::endl;
    Printer< ::rtabmap_msgs::Point3f_<ContainerAllocator> >::stream(s, indent + "  ", v.grid_view_point);
    s << indent << "wordIdKeys[]" << std::endl;
    for (size_t i = 0; i < v.wordIdKeys.size(); ++i)
    {
      s << indent << "  wordIdKeys[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.wordIdKeys[i]);
    }
    s << indent << "wordIdValues[]" << std::endl;
    for (size_t i = 0; i < v.wordIdValues.size(); ++i)
    {
      s << indent << "  wordIdValues[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.wordIdValues[i]);
    }
    s << indent << "wordKpts[]" << std::endl;
    for (size_t i = 0; i < v.wordKpts.size(); ++i)
    {
      s << indent << "  wordKpts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rtabmap_msgs::KeyPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.wordKpts[i]);
    }
    s << indent << "wordPts[]" << std::endl;
    for (size_t i = 0; i < v.wordPts.size(); ++i)
    {
      s << indent << "  wordPts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rtabmap_msgs::Point3f_<ContainerAllocator> >::stream(s, indent + "    ", v.wordPts[i]);
    }
    s << indent << "wordDescriptors[]" << std::endl;
    for (size_t i = 0; i < v.wordDescriptors.size(); ++i)
    {
      s << indent << "  wordDescriptors[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.wordDescriptors[i]);
    }
    s << indent << "globalDescriptors[]" << std::endl;
    for (size_t i = 0; i < v.globalDescriptors.size(); ++i)
    {
      s << indent << "  globalDescriptors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rtabmap_msgs::GlobalDescriptor_<ContainerAllocator> >::stream(s, indent + "    ", v.globalDescriptors[i]);
    }
    s << indent << "env_sensors[]" << std::endl;
    for (size_t i = 0; i < v.env_sensors.size(); ++i)
    {
      s << indent << "  env_sensors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rtabmap_msgs::EnvSensor_<ContainerAllocator> >::stream(s, indent + "    ", v.env_sensors[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RTABMAP_MSGS_MESSAGE_NODEDATA_H