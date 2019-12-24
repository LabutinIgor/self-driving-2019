#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include <turtlesim/Spawn.h>


turtlesim::PoseConstPtr poseTurtle1;
turtlesim::PoseConstPtr poseTurtle2;
const float EPS = 1e-5;

void turtle1PoseCB(const turtlesim::PoseConstPtr& msg) {
    poseTurtle1 = msg;
//    std::cerr << "pose1 = " << msg->x << " " << msg->y << std::endl;
}

void turtle2PoseCB(const turtlesim::PoseConstPtr& msg) {
    poseTurtle2 = msg;
//    std::cerr << "pose2 = " << msg->x << " " << msg->y << std::endl;
}

void timerCallback(const ros::TimerEvent&, ros::Publisher twist_pub) {
    if (poseTurtle1 == 0 || poseTurtle2 == 0) {
	return;
    }
    float dx = poseTurtle1->x - poseTurtle2->x;
    float dy = poseTurtle1->y - poseTurtle2->y;

    float linear = 0.2;
    if (abs(dx) > EPS || abs(dy) > EPS) {
        float angular = atan2(dy, dx) - poseTurtle2->theta;
	geometry_msgs::Twist twist;
	twist.linear.x = linear;
	twist.angular.z = angular;
	twist_pub.publish(twist);
    }
}

int main(int argc, char** argv) {
    ros::init(argc, argv, "turtle2");

    ros::NodeHandle n;

//    ros::service::waitForService("spawn");
    ros::ServiceClient add_turtle = n.serviceClient<turtlesim::Spawn>("spawn");
    turtlesim::Spawn srv;
    add_turtle.call(srv);

    ros::Subscriber sub1 = n.subscribe("/turtle1/pose", 1000, turtle1PoseCB);
    ros::Subscriber sub2 = n.subscribe("/turtle2/pose", 1000, turtle2PoseCB);

    ros::Publisher twist_pub = n.advertise<geometry_msgs::Twist>("turtle2/cmd_vel", 1);

    ros::Timer timer = n.createTimer(ros::Duration(0.016), boost::bind(timerCallback, _1, twist_pub));

    ros::spin();
}
