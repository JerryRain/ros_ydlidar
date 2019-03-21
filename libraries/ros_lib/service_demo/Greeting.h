#ifndef _ROS_SERVICE_Greeting_h
#define _ROS_SERVICE_Greeting_h
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace service_demo
{

static const char GREETING[] = "service_demo/Greeting";

  class GreetingRequest : public ros::Msg
  {
    public:
      typedef const char* _name_type;
      _name_type name;
      typedef int32_t _age_type;
      _age_type age;

    GreetingRequest():
      name(""),
      age(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_name = strlen(this->name);
      varToArr(outbuffer + offset, length_name);
      offset += 4;
      memcpy(outbuffer + offset, this->name, length_name);
      offset += length_name;
      union {
        int32_t real;
        uint32_t base;
      } u_age;
      u_age.real = this->age;
      *(outbuffer + offset + 0) = (u_age.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_age.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_age.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_age.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->age);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_name;
      arrToVar(length_name, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_name; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_name-1]=0;
      this->name = (char *)(inbuffer + offset-1);
      offset += length_name;
      union {
        int32_t real;
        uint32_t base;
      } u_age;
      u_age.base = 0;
      u_age.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_age.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_age.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_age.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->age = u_age.real;
      offset += sizeof(this->age);
     return offset;
    }

    const char * getType(){ return GREETING; };
    const char * getMD5(){ return "83da5ca00b8e049b0559653a472c88a5"; };

  };

  class GreetingResponse : public ros::Msg
  {
    public:
      typedef const char* _feedback_type;
      _feedback_type feedback;

    GreetingResponse():
      feedback("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_feedback = strlen(this->feedback);
      varToArr(outbuffer + offset, length_feedback);
      offset += 4;
      memcpy(outbuffer + offset, this->feedback, length_feedback);
      offset += length_feedback;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_feedback;
      arrToVar(length_feedback, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_feedback; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_feedback-1]=0;
      this->feedback = (char *)(inbuffer + offset-1);
      offset += length_feedback;
     return offset;
    }

    const char * getType(){ return GREETING; };
    const char * getMD5(){ return "c14cdf907e5c7c7fd47292add15660f0"; };

  };

  class Greeting {
    public:
    typedef GreetingRequest Request;
    typedef GreetingResponse Response;
  };

}
#endif
