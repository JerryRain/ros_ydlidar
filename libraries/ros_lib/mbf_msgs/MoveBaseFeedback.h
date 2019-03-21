#ifndef _ROS_mbf_msgs_MoveBaseFeedback_h
#define _ROS_mbf_msgs_MoveBaseFeedback_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/TwistStamped.h"

namespace mbf_msgs
{

  class MoveBaseFeedback : public ros::Msg
  {
    public:
      typedef float _dist_to_goal_type;
      _dist_to_goal_type dist_to_goal;
      typedef float _angle_to_goal_type;
      _angle_to_goal_type angle_to_goal;
      typedef geometry_msgs::PoseStamped _current_pose_type;
      _current_pose_type current_pose;
      typedef geometry_msgs::TwistStamped _current_twist_type;
      _current_twist_type current_twist;

    MoveBaseFeedback():
      dist_to_goal(0),
      angle_to_goal(0),
      current_pose(),
      current_twist()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_dist_to_goal;
      u_dist_to_goal.real = this->dist_to_goal;
      *(outbuffer + offset + 0) = (u_dist_to_goal.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_dist_to_goal.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_dist_to_goal.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_dist_to_goal.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->dist_to_goal);
      union {
        float real;
        uint32_t base;
      } u_angle_to_goal;
      u_angle_to_goal.real = this->angle_to_goal;
      *(outbuffer + offset + 0) = (u_angle_to_goal.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_angle_to_goal.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_angle_to_goal.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_angle_to_goal.base >> (8 * 3)) & 0xFF;
      offset += sizeof(this->angle_to_goal);
      offset += this->current_pose.serialize(outbuffer + offset);
      offset += this->current_twist.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        float real;
        uint32_t base;
      } u_dist_to_goal;
      u_dist_to_goal.base = 0;
      u_dist_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_dist_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_dist_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_dist_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->dist_to_goal = u_dist_to_goal.real;
      offset += sizeof(this->dist_to_goal);
      union {
        float real;
        uint32_t base;
      } u_angle_to_goal;
      u_angle_to_goal.base = 0;
      u_angle_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_angle_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_angle_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_angle_to_goal.base |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3);
      this->angle_to_goal = u_angle_to_goal.real;
      offset += sizeof(this->angle_to_goal);
      offset += this->current_pose.deserialize(inbuffer + offset);
      offset += this->current_twist.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return "mbf_msgs/MoveBaseFeedback"; };
    const char * getMD5(){ return "605f2de3cec62d355025906f309c248c"; };

  };

}
#endif
