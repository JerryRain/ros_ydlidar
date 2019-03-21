#ifndef _ROS_msgs_demo_Imu_h
#define _ROS_msgs_demo_Imu_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"
#include "msgs_demo/Quaternion.h"
#include "msgs_demo/Vector3.h"

namespace msgs_demo
{

  class Imu : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      typedef msgs_demo::Quaternion _orientation_type;
      _orientation_type orientation;
      float orientation_covariance[9];
      typedef msgs_demo::Vector3 _angular_velocity_type;
      _angular_velocity_type angular_velocity;
      float angular_velocity_covariance[9];
      typedef msgs_demo::Vector3 _linear_acceleration_type;
      _linear_acceleration_type linear_acceleration;
      uint32_t linear_acceleration_covariance_length;
      typedef float _linear_acceleration_covariance_type;
      _linear_acceleration_covariance_type st_linear_acceleration_covariance;
      _linear_acceleration_covariance_type * linear_acceleration_covariance;

    Imu():
      header(),
      orientation(),
      orientation_covariance(),
      angular_velocity(),
      angular_velocity_covariance(),
      linear_acceleration(),
      linear_acceleration_covariance_length(0), linear_acceleration_covariance(NULL)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      offset += this->orientation.serialize(outbuffer + offset);
      for( uint32_t i = 0; i < 9; i++){
      offset += serializeAvrFloat64(outbuffer + offset, this->orientation_covariance[i]);
      }
      offset += this->angular_velocity.serialize(outbuffer + offset);
      for( uint32_t i = 0; i < 9; i++){
      offset += serializeAvrFloat64(outbuffer + offset, this->angular_velocity_covariance[i]);
      }
      offset += this->linear_acceleration.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->linear_acceleration_covariance_length >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->linear_acceleration_covariance_length >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->linear_acceleration_covariance_length >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->linear_acceleration_covariance_length >> (8 * 3)) & 0xFF;
      offset += sizeof(this->linear_acceleration_covariance_length);
      for( uint32_t i = 0; i < linear_acceleration_covariance_length; i++){
      offset += serializeAvrFloat64(outbuffer + offset, this->linear_acceleration_covariance[i]);
      }
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      offset += this->orientation.deserialize(inbuffer + offset);
      for( uint32_t i = 0; i < 9; i++){
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->orientation_covariance[i]));
      }
      offset += this->angular_velocity.deserialize(inbuffer + offset);
      for( uint32_t i = 0; i < 9; i++){
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->angular_velocity_covariance[i]));
      }
      offset += this->linear_acceleration.deserialize(inbuffer + offset);
      uint32_t linear_acceleration_covariance_lengthT = ((uint32_t) (*(inbuffer + offset))); 
      linear_acceleration_covariance_lengthT |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1); 
      linear_acceleration_covariance_lengthT |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2); 
      linear_acceleration_covariance_lengthT |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3); 
      offset += sizeof(this->linear_acceleration_covariance_length);
      if(linear_acceleration_covariance_lengthT > linear_acceleration_covariance_length)
        this->linear_acceleration_covariance = (float*)realloc(this->linear_acceleration_covariance, linear_acceleration_covariance_lengthT * sizeof(float));
      linear_acceleration_covariance_length = linear_acceleration_covariance_lengthT;
      for( uint32_t i = 0; i < linear_acceleration_covariance_length; i++){
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->st_linear_acceleration_covariance));
        memcpy( &(this->linear_acceleration_covariance[i]), &(this->st_linear_acceleration_covariance), sizeof(float));
      }
     return offset;
    }

    const char * getType(){ return "msgs_demo/Imu"; };
    const char * getMD5(){ return "510e342720397eb6732ae15c52e1758a"; };

  };

}
#endif
