// Generated by gencpp from file duckietown_msgs/WheelsCmd.msg
// DO NOT EDIT!


#ifndef DUCKIETOWN_MSGS_MESSAGE_WHEELSCMD_H
#define DUCKIETOWN_MSGS_MESSAGE_WHEELSCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace duckietown_msgs
{
template <class ContainerAllocator>
struct WheelsCmd_
{
  typedef WheelsCmd_<ContainerAllocator> Type;

  WheelsCmd_()
    : vel_left(0.0)
    , vel_right(0.0)  {
    }
  WheelsCmd_(const ContainerAllocator& _alloc)
    : vel_left(0.0)
    , vel_right(0.0)  {
  (void)_alloc;
    }



   typedef float _vel_left_type;
  _vel_left_type vel_left;

   typedef float _vel_right_type;
  _vel_right_type vel_right;





  typedef boost::shared_ptr< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> const> ConstPtr;

}; // struct WheelsCmd_

typedef ::duckietown_msgs::WheelsCmd_<std::allocator<void> > WheelsCmd;

typedef boost::shared_ptr< ::duckietown_msgs::WheelsCmd > WheelsCmdPtr;
typedef boost::shared_ptr< ::duckietown_msgs::WheelsCmd const> WheelsCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::duckietown_msgs::WheelsCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace duckietown_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'duckietown_msgs': ['/home/inlabutin/HSE/self-driving/last-hw/gym-duckietown/ros/catkin_ws/src/duckietown_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "95189a38cb8112e26fa8ced2d5359a0c";
  }

  static const char* value(const ::duckietown_msgs::WheelsCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x95189a38cb8112e2ULL;
  static const uint64_t static_value2 = 0x6fa8ced2d5359a0cULL;
};

template<class ContainerAllocator>
struct DataType< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "duckietown_msgs/WheelsCmd";
  }

  static const char* value(const ::duckietown_msgs::WheelsCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 vel_left\n\
float32 vel_right\n\
";
  }

  static const char* value(const ::duckietown_msgs::WheelsCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vel_left);
      stream.next(m.vel_right);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelsCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::duckietown_msgs::WheelsCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::duckietown_msgs::WheelsCmd_<ContainerAllocator>& v)
  {
    s << indent << "vel_left: ";
    Printer<float>::stream(s, indent + "  ", v.vel_left);
    s << indent << "vel_right: ";
    Printer<float>::stream(s, indent + "  ", v.vel_right);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DUCKIETOWN_MSGS_MESSAGE_WHEELSCMD_H
