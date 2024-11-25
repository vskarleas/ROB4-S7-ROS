#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from turtlesim.msg import Pose
from turtlesim.srv import SetPen

last_change_time = 0
change_interval = 0.1  # every 100ms

def change_pen_color(r, g, b, width, off):

    rospy.wait_for_service('/turtle1/set_pen')

    try:
        set_pen = rospy.ServiceProxy('/turtle1/set_pen', SetPen)

        # Call the service with the required arguments
        set_pen(r, g, b, width, off)
        rospy.loginfo(f"Pen color set to r:{r}, g:{g}, b:{b}, width:{width}, off:{off}")
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")

# Callback function for reading turtlesim node output
def read_pose_callback(msg):
    rospy.loginfo(f"Received turtle pose with x: {msg.x:.2f}, y: {msg.y:.2f}, theta: {msg.theta:.2f}")

    if msg.y > 10.0 or msg.y < 1.5 or msg.x > 10.0 or msg.x < 1.5:
        rospy.loginfo("Changing the pen color to red.")
        change_pen_color(255, 0, 0, 3, False)
    else:
        rospy.loginfo("Turtle in the safe zone, resetting pen color.")
        change_pen_color(179, 184, 255, 3, False)

if __name__ == '__main__':
    try:
        rospy.init_node('mybot_color', anonymous=True) # Initialize the node
        rospy.loginfo("mybot_color node started.") # Debugging message

        # Wait for the set_pen service to become available
        rospy.loginfo("set_pen service is available.")

        # Define the subscriber on the /turtle1/pose topic
        sub = rospy.Subscriber('/turtle1/pose', Pose, read_pose_callback, queue_size=1) # Define the subscriber
        rospy.loginfo("mybot_color subscriber is set up.") # Debugging message

        # Keep the node running and listening to messages
        rospy.spin()

    except rospy.ROSInterruptException:
        pass