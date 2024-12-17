// Generated by gencpp from file mydrone/alt_warningResponse.msg
// DO NOT EDIT!


#ifndef MYDRONE_MESSAGE_ALT_WARNINGRESPONSE_H
#define MYDRONE_MESSAGE_ALT_WARNINGRESPONSE_H


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
struct alt_warningResponse_
{
  typedef alt_warningResponse_<ContainerAllocator> Type;

  alt_warningResponse_()
    : response()  {
    }
  alt_warningResponse_(const ContainerAllocator& _alloc)
    : response(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _response_type;
  _response_type response;





  typedef boost::shared_ptr< ::mydrone::alt_warningResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mydrone::alt_warningResponse_<ContainerAllocator> const> ConstPtr;

}; // struct alt_warningResponse_

typedef ::mydrone::alt_warningResponse_<std::allocator<void> > alt_warningResponse;

typedef boost::shared_ptr< ::mydrone::alt_warningResponse > alt_warningResponsePtr;
typedef boost::shared_ptr< ::mydrone::alt_warningResponse const> alt_warningResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mydrone::alt_warningResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mydrone::alt_warningResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mydrone::alt_warningResponse_<ContainerAllocator1> & lhs, const ::mydrone::alt_warningResponse_<ContainerAllocator2> & rhs)
{
  return lhs.response == rhs.response;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mydrone::alt_warningResponse_<ContainerAllocator1> & lhs, const ::mydrone::alt_warningResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mydrone

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mydrone::alt_warningResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mydrone::alt_warningResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mydrone::alt_warningResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mydrone::alt_warningResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mydrone::alt_warningResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mydrone::alt_warningResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mydrone::alt_warningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6de314e2dc76fbff2b6244a6ad70b68d";
  }

  static const char* value(const ::mydrone::alt_warningResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6de314e2dc76fbffULL;
  static const uint64_t static_value2 = 0x2b6244a6ad70b68dULL;
};

template<class ContainerAllocator>
struct DataType< ::mydrone::alt_warningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mydrone/alt_warningResponse";
  }

  static const char* value(const ::mydrone::alt_warningResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mydrone::alt_warningResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string response\n"
"\n"
;
  }

  static const char* value(const ::mydrone::alt_warningResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mydrone::alt_warningResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct alt_warningResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mydrone::alt_warningResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mydrone::alt_warningResponse_<ContainerAllocator>& v)
  {
    s << indent << "response: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MYDRONE_MESSAGE_ALT_WARNINGRESPONSE_H