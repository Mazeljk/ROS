#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include "july_msgs/JulyMsg.h"

int main(int argc, char ** argv){
    ros::init(argc, argv, "july_talker");
    ros::NodeHandle n;
    ros::Publisher july_pub = n.advertise<std_msgs::String>("/july_topic", 10);
    ros::Publisher july_pub_new = n.advertise<july_msgs::JulyMsg>("/july_topic", 10);
    ros::Rate loop_rate = 10;
    int count = 0;

    while (ros::ok()){
        std_msgs::String msg;
        std::stringstream ss;
        ss << "hello july" << count;
        count ++;
        msg.data = ss.str();
        july_pub.publish(msg);

        std::string param_string;
        n.param<std::string>("myparam", param_string, "hi July");
        july_msgs::JulyMsg julyMsg;
        julyMsg.id = count;
        julyMsg.detail = param_string;
        july_pub_new.publish(julyMsg);

        loop_rate.sleep();
    }
}