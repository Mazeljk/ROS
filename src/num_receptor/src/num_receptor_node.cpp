#include "ros/ros.h"
#include "myMsg/simple_msg.h"
#include <sstream>

void numSum(const myMsg::simple_msg::ConstPtr& msg){
	ROS_INFO("the sum of the two number is: %d", msg->num1 + msg->num2);
}

int main(int argc, char ** argv){
	ros::init(argc, argv, "numRecpetor");
	ros::NodeHandle n;
	ros::Subscriber num_sub = n.subscribe("/num_topic", 10, numSum);
	ros::spin();
	return 0;
}
