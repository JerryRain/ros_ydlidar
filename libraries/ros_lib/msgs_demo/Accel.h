#ifndef _ROS_msgs_demo_Accel_h
#define _ROS_msgs_demo_Accel_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "msgs_demo/Vector3.h"

namespace msgs_demo
{

  class Accel : public ros::Msg
  {
    public:
      typedef msgs_demo::Vector3 _linear_type;
      _linear_type linear;
      typedef msgs_demo::Vector3 _angular_type;
      _angular_type angular;

    Accel():
      linear(),
      angular()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->linear.serialize(outbuffer + offset);
      offset += this->angular.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->linear.deserialize(inbuffer + offset);
      offset += this->angular.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return "msgs_demo/Accel"; };
    const char * getMD5(){ return "9f195f881246fdfa2798d1d3eebca84a"; };

  };

}
#endif
