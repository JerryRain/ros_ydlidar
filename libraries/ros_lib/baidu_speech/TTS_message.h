#ifndef _ROS_baidu_speech_TTS_message_h
#define _ROS_baidu_speech_TTS_message_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"
#include "std_msgs/String.h"
#include "ros/time.h"

namespace baidu_speech
{

  class TTS_message : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef std_msgs::String _engine_type;
      _engine_type engine;
      typedef std_msgs::String _sentence_type;
      _sentence_type sentence;
      typedef std_msgs::String _language_type;
      _language_type language;
      typedef std_msgs::String _engine_settings_type;
      _engine_settings_type engine_settings;
      typedef std_msgs::String _speaker_settings_type;
      _speaker_settings_type speaker_settings;
      typedef ros::Time _time_type;
      _time_type time;

    TTS_message():
      header(),
      engine(),
      sentence(),
      language(),
      engine_settings(),
      speaker_settings(),
      time()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      offset += this->engine.serialize(outbuffer + offset);
      offset += this->sentence.serialize(outbuffer + offset);
      offset += this->language.serialize(outbuffer + offset);
      offset += this->engine_settings.serialize(outbuffer + offset);
      offset += this->speaker_settings.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->time.sec >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->time.sec >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->time.sec >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->time.sec >> (8 * 3)) & 0xFF;
      offset += sizeof(this->time.sec);
      *(outbuffer + offset + 0) = (this->time.nsec >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->time.nsec >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->time.nsec >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->time.nsec >> (8 * 3)) & 0xFF;
      offset += sizeof(this->time.nsec);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      offset += this->engine.deserialize(inbuffer + offset);
      offset += this->sentence.deserialize(inbuffer + offset);
      offset += this->language.deserialize(inbuffer + offset);
      offset += this->engine_settings.deserialize(inbuffer + offset);
      offset += this->speaker_settings.deserialize(inbuffer + offset);
      this->time.sec =  ((uint32_t) (*(inbuffer + offset)));
      this->time.sec |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->time.sec |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      this->time.sec |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      offset += sizeof(this->time.sec);
      this->time.nsec =  ((uint32_t) (*(inbuffer + offset)));
      this->time.nsec |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      this->time.nsec |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      this->time.nsec |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      offset += sizeof(this->time.nsec);
     return offset;
    }

    const char * getType(){ return "baidu_speech/TTS_message"; };
    const char * getMD5(){ return "eb6f1b90f95952fc40263a7efbe0490f"; };

  };

}
#endif
