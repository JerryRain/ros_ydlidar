#ifndef _ROS_msgs_demo_Odometry_h
#define _ROS_msgs_demo_Odometry_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"
#include "msgs_demo/PoseWithCovariance.h"
#include "msgs_demo/TwistWithCovariance.h"

namespace msgs_demo
{

  class Odometry : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef const char* _child_frame_id_type;
      _child_frame_id_type child_frame_id;
      typedef msgs_demo::PoseWithCovariance _pose_type;
      _pose_type pose;
      typedef msgs_demo::TwistWithCovariance _twist_type;
      _twist_type twist;

    Odometry():
      header(),
      child_frame_id(""),
      pose(),
      twist()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      uint32_t length_child_frame_id = strlen(this->child_frame_id);
      varToArr(outbuffer + offset, length_child_frame_id);
      offset += 4;
      memcpy(outbuffer + offset, this->child_frame_id, length_child_frame_id);
      offset += length_child_frame_id;
      offset += this->pose.serialize(outbuffer + offset);
      offset += this->twist.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      uint32_t length_child_frame_id;
      arrToVar(length_child_frame_id, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_child_frame_id; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_child_frame_id-1]=0;
      this->child_frame_id = (char *)(inbuffer + offset-1);
      offset += length_child_frame_id;
      offset += this->pose.deserialize(inbuffer + offset);
      offset += this->twist.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return "msgs_demo/Odometry"; };
    const char * getMD5(){ return "cd5e73d190d741a2f92e81eda573aca7"; };

  };

}
#endif
