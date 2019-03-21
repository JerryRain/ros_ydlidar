#ifndef _ROS_msgs_demo_Pose_h
#define _ROS_msgs_demo_Pose_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "msgs_demo/Point.h"
#include "msgs_demo/Quaternion.h"

namespace msgs_demo
{

  class Pose : public ros::Msg
  {
    public:
      typedef msgs_demo::Point _position_type;
      _position_type position;
      typedef msgs_demo::Quaternion _orientation_type;
      _orientation_type orientation;

    Pose():
      position(),
      orientation()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->position.serialize(outbuffer + offset);
      offset += this->orientation.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->position.deserialize(inbuffer + offset);
      offset += this->orientation.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return "msgs_demo/Pose"; };
    const char * getMD5(){ return "e45d45a5a1ce597b249e23fb30fc871f"; };

  };

}
#endif
