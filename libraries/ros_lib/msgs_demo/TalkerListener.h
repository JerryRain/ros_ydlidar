#ifndef _ROS_SERVICE_TalkerListener_h
#define _ROS_SERVICE_TalkerListener_h
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace msgs_demo
{

static const char TALKERLISTENER[] = "msgs_demo/TalkerListener";

  class TalkerListenerRequest : public ros::Msg
  {
    public:
      typedef const char* _request_type;
      _request_type request;

    TalkerListenerRequest():
      request("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_request = strlen(this->request);
      varToArr(outbuffer + offset, length_request);
      offset += 4;
      memcpy(outbuffer + offset, this->request, length_request);
      offset += length_request;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_request;
      arrToVar(length_request, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_request; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_request-1]=0;
      this->request = (char *)(inbuffer + offset-1);
      offset += length_request;
     return offset;
    }

    const char * getType(){ return TALKERLISTENER; };
    const char * getMD5(){ return "9b13f31f7a0a36901919f7ec0d9f40d4"; };

  };

  class TalkerListenerResponse : public ros::Msg
  {
    public:
      typedef const char* _response_type;
      _response_type response;

    TalkerListenerResponse():
      response("")
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      uint32_t length_response = strlen(this->response);
      varToArr(outbuffer + offset, length_response);
      offset += 4;
      memcpy(outbuffer + offset, this->response, length_response);
      offset += length_response;
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      uint32_t length_response;
      arrToVar(length_response, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_response; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_response-1]=0;
      this->response = (char *)(inbuffer + offset-1);
      offset += length_response;
     return offset;
    }

    const char * getType(){ return TALKERLISTENER; };
    const char * getMD5(){ return "6de314e2dc76fbff2b6244a6ad70b68d"; };

  };

  class TalkerListener {
    public:
    typedef TalkerListenerRequest Request;
    typedef TalkerListenerResponse Response;
  };

}
#endif
