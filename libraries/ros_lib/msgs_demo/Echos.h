#ifndef _ROS_msgs_demo_Echos_h
#define _ROS_msgs_demo_Echos_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace msgs_demo
{

  class Echos : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef uint16_t _front_left_type;
      _front_left_type front_left;
      typedef uint16_t _front_center_type;
      _front_center_type front_center;
      typedef uint16_t _front_right_type;
      _front_right_type front_right;
      typedef uint16_t _rear_left_type;
      _rear_left_type rear_left;
      typedef uint16_t _rear_center_type;
      _rear_center_type rear_center;
      typedef uint16_t _rear_right_type;
      _rear_right_type rear_right;

    Echos():
      header(),
      front_left(0),
      front_center(0),
      front_right(0),
      rear_left(0),
      rear_center(0),
      rear_right(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->front_left >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->front_left >> (8 * 1)) & 0xFF;
      offset += sizeof(this->front_left);
      *(outbuffer + offset + 0) = (this->front_center >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->front_center >> (8 * 1)) & 0xFF;
      offset += sizeof(this->front_center);
      *(outbuffer + offset + 0) = (this->front_right >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->front_right >> (8 * 1)) & 0xFF;
      offset += sizeof(this->front_right);
      *(outbuffer + offset + 0) = (this->rear_left >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->rear_left >> (8 * 1)) & 0xFF;
      offset += sizeof(this->rear_left);
      *(outbuffer + offset + 0) = (this->rear_center >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->rear_center >> (8 * 1)) & 0xFF;
      offset += sizeof(this->rear_center);
      *(outbuffer + offset + 0) = (this->rear_right >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->rear_right >> (8 * 1)) & 0xFF;
      offset += sizeof(this->rear_right);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      this->front_left =  ((uint16_t) (*(inbuffer + offset)));
      this->front_left |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->front_left);
      this->front_center =  ((uint16_t) (*(inbuffer + offset)));
      this->front_center |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->front_center);
      this->front_right =  ((uint16_t) (*(inbuffer + offset)));
      this->front_right |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->front_right);
      this->rear_left =  ((uint16_t) (*(inbuffer + offset)));
      this->rear_left |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->rear_left);
      this->rear_center =  ((uint16_t) (*(inbuffer + offset)));
      this->rear_center |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->rear_center);
      this->rear_right =  ((uint16_t) (*(inbuffer + offset)));
      this->rear_right |= ((uint16_t) (*(inbuffer + offset + 1))) << (8 * 1);
      offset += sizeof(this->rear_right);
     return offset;
    }

    const char * getType(){ return "msgs_demo/Echos"; };
    const char * getMD5(){ return "41b4a21d92f5fd9f5c8f7dc9c07e154a"; };

  };

}
#endif
