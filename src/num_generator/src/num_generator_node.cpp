#include "ros/ros.h"
#include "myMsg/simple_msg.h"
#include <sstream>
#include <cstdlib>

int main(int argc, char ** argv){
    ros::init(argc, argv, "numGenerator");
    ros::NodeHandle n;
    ros::Publisher num_pub = n.advertise<myMsg::simple_msg>("/num_topic", 10);
    ros::Rate loop_rate = 10;

    while (ros::ok()){
		myMsg::simple_msg msg;

		int min_num1, min_num2;
		n.param<int>("minNum1", min_num1, 100);
		n.param<int>("minNum2", min_num2, 1);
		msg.num1 = std::rand() % 401 + min_num1;
		msg.num2 = std::rand() % 100 + min_num2;
		num_pub.publish(msg);
		loop_rate.sleep();
	}
}
