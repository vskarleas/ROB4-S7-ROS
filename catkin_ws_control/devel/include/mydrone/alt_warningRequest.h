// Generated by gencpp from file mydrone/alt_warningRequest.msg
// DO NOT EDIT!


#ifndef MYDRONE_MESSAGE_ALT_WARNINGREQUEST_H
#define MYDRONE_MESSAGE_ALT_WARNINGREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mydrone
{
template <class ContainerAllocator>
struct alt_warningRequest_
{
  typedef alt_warningRequest_<ContainerAllocator> Type;

  alt_warningRequest_()
    : message()  {
    }
  alt_warningRequest_(const ContainerAllocator& _alloc)
    : message(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::mydrone::alt_warningRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mydrone::alt_warningRequest_<ContainerAllocator> const> ConstPtr;

}; // struct alt_warningRequest_

typedef ::mydrone::alt_warningRequest_<std::allocator<void> > alt_warningRequest;

typedef boost::shared_ptr< ::mydrone::alt_warningRequest > alt_warningRequestPtr;
typedef boost::shared_ptr< ::mydrone::alt_warningRequest const> alt_warningRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mydrone::alt_warningRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mydrone::alt_warningRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mydrone::alt_warningRequest_<ContainerAllocator1> & lhs, const ::mydrone::alt_warningRequest_<ContainerAllocator2> & rhs)
{
  return lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mydrone::alt_warningRequest_<ContainerAllocator1> & lhs, const ::mydrone::alt_warningRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mydrone

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mydrone::alt_warningRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mydrone::alt_warningRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mydrone::alt_warningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mydrone::alt_warningRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mydrone::alt_warningRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mydrone::alt_warningRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mydrone::alt_warningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5f003d6bcc824cbd51361d66d8e4f76c";
  }

  static const char* value(const ::mydrone::alt_warningRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5f003d6bcc824cbdULL;
  static const uint64_t static_value2 = 0x51361d66d8e4f76cULL;
};

template<class ContainerAllocator>
struct DataType< ::mydrone::alt_warningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mydrone/alt_warningRequest";
  }

  static const char* value(const ::mydrone::alt_warningRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mydrone::alt_warningRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Mydrone altitude warning management\n"
"# \n"
"#  - message: should be either NORMAL or WARNING\n"
"#  - response: a short message indicating the color of the WARNING LED on the controler\n"
"#       color is changed to GREEN if altitude is NORMAL, or to RED if a WARNING is raised with the service\n"
"\n"
"string message\n"
;
  }

  static const char* value(const ::mydrone::alt_warningRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mydrone::alt_warningRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct alt_warningRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mydrone::alt_warningRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mydrone::alt_warningRequest_<ContainerAllocator>& v)
  {
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MYDRONE_MESSAGE_ALT_WARNINGREQUEST_H
