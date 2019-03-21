#ifndef _ROS_learning_communication_Person_h
#define _ROS_learning_communication_Person_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace learning_communication
{

  class Person : public ros::Msg
  {
    public:
      typedef const char* _name_type;
      _name_type name;
      typedef uint8_t _sex_type;
      _sex_type sex;
      typedef uint8_t _age_type;
      _age_type age;
      enum { unknown =  0 };
      enum { male =  1 };
      enum { female =  2 };

    Person():
      name(""),
      sex(0),
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
      *(outbuffer + offset + 0) = (this->sex >> (8 * 0)) & 0xFF;
      offset += sizeof(this->sex);
      *(outbuffer + offset + 0) = (this->age >> (8 * 0)) & 0xFF;
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
      this->sex =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->sex);
      this->age =  ((uint8_t) (*(inbuffer + offset)));
      offset += sizeof(this->age);
     return offset;
    }

    const char * getType(){ return "learning_communication/Person"; };
    const char * getMD5(){ return "8361f88618d6779bd872f0ba928ced56"; };

  };

}
#endif
