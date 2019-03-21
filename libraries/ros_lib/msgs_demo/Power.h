#ifndef _ROS_msgs_demo_Power_h
#define _ROS_msgs_demo_Power_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace msgs_demo
{

  class Power : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef bool _power_type;
      _power_type power;
      enum { ON =  1 };
      enum { OFF =  0 };

    Power():
      header(),
      power(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      union {
        bool real;
        uint8_t base;
      } u_power;
      u_power.real = this->power;
      *(outbuffer + offset + 0) = (u_power.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->power);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      union {
        bool real;
        uint8_t base;
      } u_power;
      u_power.base = 0;
      u_power.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->power = u_power.real;
      offset += sizeof(this->power);
     return offset;
    }

    const char * getType(){ return "msgs_demo/Power"; };
    const char * getMD5(){ return "2c1df04c080f2d0a63612b2aeb670955"; };

  };

}
#endif
