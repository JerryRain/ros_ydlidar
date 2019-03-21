#ifndef _ROS_mbf_msgs_ExePathGoal_h
#define _ROS_mbf_msgs_ExePathGoal_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "nav_msgs/Path.h"

namespace mbf_msgs
{

  class ExePathGoal : public ros::Msg
  {
    public:
      typedef nav_msgs::Path _path_type;
      _path_type path;
      typedef const char* _controller_type;
      _controller_type controller;

    ExePathGoal():
      path(),
      controller("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->path.serialize(outbuffer + offset);
      uint32_t length_controller = strlen(this->controller);
      varToArr(outbuffer + offset, length_controller);
      offset += 4;
      memcpy(outbuffer + offset, this->controller, length_controller);
      offset += length_controller;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->path.deserialize(inbuffer + offset);
      uint32_t length_controller;
      arrToVar(length_controller, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_controller; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_controller-1]=0;
      this->controller = (char *)(inbuffer + offset-1);
      offset += length_controller;
     return offset;
    }

    const char * getType(){ return "mbf_msgs/ExePathGoal"; };
    const char * getMD5(){ return "204acf50b87b6e3d7b7a2cad43ab5688"; };

  };

}
#endif
