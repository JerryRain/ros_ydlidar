#ifndef _ROS_arbotix_msgs_Analog_h
#define _ROS_arbotix_msgs_Analog_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace arbotix_msgs
{

  class Analog : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef uint16_t _value_type;
      _value_type value;

    Analog():
      header(),
      value(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->value >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->value >> (8 * 1)) & 0xFF;
      offset += sizeof(this->value);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      this->value =  ((uint16_t) (*(inbuffer + offset)));
      this->value |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->value);
     return offset;
    }

    const char * getType(){ return "arbotix_msgs/Analog"; };
    const char * getMD5(){ return "5760aa9c40c2caa52a04d293094e679d"; };

  };

}
#endif
