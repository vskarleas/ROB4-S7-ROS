#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from std_msgs.msg import Float32
from submarinedrone.srv import depth_warning

# Constants
DENSITY_WATER = 1030  # in kg/m^3
GRAVITY = 9.807  # in N/kg
pressure_remote = None
pressure_robot = None

def trigger_depth_warning(message):
    try:
        rospy.wait_for_service('/depth_warning')
        rospy.loginfo(f"Message for depth: {message}")
        depth_warning_service = rospy.ServiceProxy('/depth_warning', depth_warning)
        response = depth_warning_service(message=message)
        rospy.loginfo(f"Depth warning service response: {response.response} \n")
    except rospy.ServiceException as e:
        rospy.logerr(f"Failed to call depth_warning service: {e}")

def compute_and_publish_depth(rob_press, rem_pressure, publisher):
    if rob_press is not None and rem_pressure is not None:
        try:
            # Compute depth using the formula
            depth = (rob_press - rem_pressure) / (DENSITY_WATER * GRAVITY)

            # Retrieve max safe depth parameter
            max_safe_depth = rospy.get_param('max_depth')  # Default to 50 if not set
            rospy.loginfo(f"Max safe depth: {max_safe_depth}")

            # Publish depth
            publisher.publish(Float32(data=depth)) #With casting here
            rospy.loginfo(f"Published depth: {depth}")

            # Check depth and trigger warning if necessary
            if depth > max_safe_depth:
                trigger_depth_warning("WARNING")
            else:
                trigger_depth_warning("NORMAL")

        except rospy.ServiceException as e:
            rospy.logerr(f"Failed to compute depth: {e}")

def callback_pressure_robot(msg):
    global pressure_robot
    pressure_robot = msg.data
    # rospy.loginfo("Pressure robot is: %.2f", pressure_robot)

def callback_pressure_remote(msg):
    global pressure_remote
    pressure_remote = msg.data
    # rospy.loginfo("Pressure remote is: %.2f", pressure_remote)

def talker():
    pub = rospy.Publisher('/depth', Float32)
    return pub

if __name__ == '__main__':
    try:
        rospy.init_node('exam', anonymous=False)

        # Publisher for depth
        publisher = talker()
        rospy.loginfo("exam node started.")

        # Subscribers with state-sharing arguments
        rospy.Subscriber('/pressure_robot', Float32, callback_pressure_robot)
        rospy.Subscriber('/pressure_remote', Float32, callback_pressure_remote)

        while not rospy.is_shutdown():
            compute_and_publish_depth(pressure_robot, pressure_remote, publisher)
            
            # Sleep for the specified rate (10 Hz)
            # rospy.Rate(1).sleep()
            
        
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
