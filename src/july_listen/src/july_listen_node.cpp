#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

void julyCallback(const std_msgs::String::ConstPtr& msg){
    ROS_INFO("I heared %s", msg->data.c_str());
}

int main(int argc, char ** argv){
    ros::init(argc, argv, "july_listener");
    ros::NodeHandle n;
    ros::Subscriber july_sub = n.subscribe("july_topic", 10, julyCallback);
    ros::spin();
    return 0;
}