#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from geometry_msgs.msg import Twist
import click

# Arrow keys codes
keys = {'w': 'up', 's': 'down', 'd': 'right', 'a': 'left', 'h': 'stop', 'q': 'quit'}

# • import the data type expected for the topic /turtle1/cmd_vel ;
# • define a publisher on the /turtle1/cmd_vel 
# • initialize a new node with name mybot_teleop;
# • define a rate at which you would like the data to be published;
# • as long as the ROS node is not shut down, and according to the key pressed on the keyboard, build an
# appropriate message and publish it on /turtle1/cmd_vel to make the turtle move.

def talker():
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rospy.init_node('mybot_teleop', anonymous=True)

    rospy.loginfo("mybot_teleop node initialised. Press 'q' to quit.")
    return pub
    
# Return the twist message based on the direction
def get_twist_message(direction):
    twist = Twist()
    if direction == 'up':
        twist.linear.x = rospy.get_param("linear_scale")
    elif direction == 'down':
        twist.linear.x = -(rospy.get_param("linear_scale"))
    elif direction == 'left':
        twist.angular.z = rospy.get_param("angular_scale")
    elif direction == 'right':
        twist.angular.z = -(rospy.get_param("angular_scale"))
    else:  # stop or quit
        twist.linear.x = 0
        twist.angular.z = 0
    return twist


# Send the twist message to the turtlebot by calling the talker function
if __name__ == '__main__':    
    try:
        pub = talker()
        rospy.loginfo("mybot_teleop node is running.")
        while not rospy.is_shutdown():
            # Get character from console
            mykey = click.getchar()
            if mykey in keys:
                char = keys[mykey]
                if char == 'quit':
                    print("Shutting down teleop.")
                    rospy.loginfo("Shutting down teleop.")
                    break  # Exit the loop on 'quit'

                # Generate and publish the twist message
                twist = get_twist_message(char)
                rospy.loginfo(f"Publishing twist command\n {twist}")
                pub.publish(twist)
                
            rospy.Rate(10).sleep()
        
    except rospy.ROSInterruptException:
        pass