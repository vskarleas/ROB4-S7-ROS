#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import rospy
from std_msgs.msg import Float32
from submarinedrone.srv import depth_warning

# Constants
DENSITY_WATER = 1030  # in kg/m^3
GRAVITY = 9.807  # in N/kg

class ExamNode:
    def __init__(self):
        # Initialize the node
        rospy.init_node('exam', anonymous=False)

        # Subscribers to pressure topics
        rospy.Subscriber('/pressure_robot', Float32, self.callback_pressure_robot)
        rospy.Subscriber('/pressure_remote', Float32, self.callback_pressure_remote)

        # Publisher for depth
        self.depth_publisher = rospy.Publisher('/depth', Float32, queue_size=10)

        # Pressure values
        self.pressure_robot = None
        self.pressure_remote = None

        self.max_safe_depth = rospy.get_param('max_depth')

        # Depth warning service client
        rospy.wait_for_service('/depth_warning')
        self.depth_warning_service = rospy.ServiceProxy('/depth_warning', depth_warning)

    def callback_pressure_robot(self, msg):
        self.pressure_robot = msg.data
        self.compute_and_publish_depth()

    def callback_pressure_remote(self, msg):
        self.pressure_remote = msg.data
        self.compute_and_publish_depth()

    def compute_and_publish_depth(self):
        if self.pressure_robot is not None and self.pressure_remote is not None:
            # Compute depth using the formula
            depth = (self.pressure_robot - self.pressure_remote) / (DENSITY_WATER * GRAVITY)

            # Publish depth
            self.depth_publisher.publish(Float32(data=depth))
            rospy.loginfo(f"Depth warning service response: {depth}")

            # Check depth and trigger warning if necessary
            if depth > self.max_safe_depth:
                self.trigger_depth_warning("WARNING")
            else:
                self.trigger_depth_warning("NORMAL")

    def trigger_depth_warning(self, message):
        try:
            response = self.depth_warning_service(message=message)
            rospy.loginfo(f"Depth warning service response: {response.response}")
        except rospy.ServiceException as e:
            rospy.logerr(f"Failed to call depth_warning service: {e}")

if __name__ == '__main__':
    try:
        node = ExamNode()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
