// Generated by gencpp from file july_msgs/JulyMsg.msg
// DO NOT EDIT!


#ifndef JULY_MSGS_MESSAGE_JULYMSG_H
#define JULY_MSGS_MESSAGE_JULYMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace july_msgs
{
template <class ContainerAllocator>
struct JulyMsg_
{
  typedef JulyMsg_<ContainerAllocator> Type;

  JulyMsg_()
    : detail()
    , id(0)  {
    }
  JulyMsg_(const ContainerAllocator& _alloc)
    : detail(_alloc)
    , id(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _detail_type;
  _detail_type detail;

   typedef int32_t _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::july_msgs::JulyMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::july_msgs::JulyMsg_<ContainerAllocator> const> ConstPtr;

}; // struct JulyMsg_

typedef ::july_msgs::JulyMsg_<std::allocator<void> > JulyMsg;

typedef boost::shared_ptr< ::july_msgs::JulyMsg > JulyMsgPtr;
typedef boost::shared_ptr< ::july_msgs::JulyMsg const> JulyMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::july_msgs::JulyMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::july_msgs::JulyMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace july_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'july_msgs': ['/home/parallels/catkin_ws/src/july_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::july_msgs::JulyMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::july_msgs::JulyMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::july_msgs::JulyMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::july_msgs::JulyMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::july_msgs::JulyMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::july_msgs::JulyMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::july_msgs::JulyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7f5528a9204f8b31c9206fc97a4a07bb";
  }

  static const char* value(const ::july_msgs::JulyMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7f5528a9204f8b31ULL;
  static const uint64_t static_value2 = 0xc9206fc97a4a07bbULL;
};

template<class ContainerAllocator>
struct DataType< ::july_msgs::JulyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "july_msgs/JulyMsg";
  }

  static const char* value(const ::july_msgs::JulyMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::july_msgs::JulyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string detail\n\
int32 id\n\
";
  }

  static const char* value(const ::july_msgs::JulyMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::july_msgs::JulyMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.detail);
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JulyMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::july_msgs::JulyMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::july_msgs::JulyMsg_<ContainerAllocator>& v)
  {
    s << indent << "detail: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.detail);
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JULY_MSGS_MESSAGE_JULYMSG_H
