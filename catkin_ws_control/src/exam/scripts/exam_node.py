#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32 as float_
from math import log

from std_srvs.srv import Trigger, TriggerResponse
from time import time

# Global constants
r = 8.31432      # Gas constant (J/(K*mol))
p0 = 101325      # Standard pressure at sea level (Pa)
mi = 0.0289644   # Mean molecular mass of air (kg/mol)
g = 9.80665      # Gravitational acceleration (m/s^2)

# Global variables to store the temperature and pressure
current_temperature = None
current_pressure = None
altitude = None
# Service client for altitude warning
altitude_warning_service = None

# Variables to handle threshold-based warning
threshold = 1300.0  # Default value for threshold
time_above_threshold = None  # Time when the altitude exceeds the threshold
warning_triggered = False  # Flag to track if warning was triggered

def get_threshold_param():
    global threshold
    threshold = rospy.get_param('threshold', 1300.0)  # Get the threshold parameter from the launch file


def read_temperature_callback(msg):
    global current_temperature  # Declare it as a global variable
    current_temperature = msg.data
    # Check if the temperature is greater than 30
    if current_temperature > 30:
        rospy.loginfo("Temperature is greater than 30 degrees: %.2f", current_temperature)
    else:
        rospy.loginfo("Temperature is less than 30 degrees: %.2f", current_temperature)

def read_pressure_callback(msg):
    global current_pressure  # Declare it as a global variable
    current_pressure = msg.data
    # Check if the pressure is greater than 100
    if current_pressure > 100:
        rospy.loginfo("Pressure is greater than 100: %.2f", current_pressure)
    else:
        rospy.loginfo("Pressure is less than 100: %.2f", current_pressure)

def altitude_warning_callback(req):
    # This function simulates the service response
    return TriggerResponse(success=True, message="ALT WARN Indicator status updated.")

def trigger_altitude_warning():
    # This function triggers the /altitude_warning service if needed
    global altitude_warning_service
    try:
        response = altitude_warning_service()
        rospy.loginfo(f"Service called: {response.message}")
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")

def talker():
    pub = rospy.Publisher('/altitude', float_, queue_size=10)
    return pub

if __name__ == '__main__':
    try:
        rospy.init_node('exam_node', anonymous=True) # Initialize the node

        # Get the threshold parameter from the launch file
        get_threshold_param()

        # Initialize the service client for altitude_warning service
        rospy.wait_for_service('/altitude_warning')  # Wait for the service to be available
        altitude_warning_service = rospy.ServiceProxy('/altitude_warning', Trigger)  # Create the service proxy


        pub = talker()
        rospy.loginfo("exam_node node started.") # Debugging message

        # Define the subscriber on the /temperature topic
        sub_temperature = rospy.Subscriber('/temperature', float_, read_temperature_callback, queue_size=1) # Define the subscriber
        sub_pressure = rospy.Subscriber('/pressure', float_, read_pressure_callback, queue_size=1) # Define the subscriber

        # Keep the node running and listening to messages
        while not rospy.is_shutdown():
            if current_temperature is not None and current_pressure is not None:
                # Debugging logs to ensure both values are present
                rospy.loginfo(f"\n\nCurrent Temperature: {current_temperature}, Current Pressure: {current_pressure}\n")
                
                try:
                    # Calculate the altitude
                    altitude = (r * current_temperature / (mi * g)) * log(p0 / current_pressure)
                    
                    # Debugging log to check if the altitude calculation is successful
                    rospy.loginfo(f"Calculated Altitude: {altitude}")

                    pub.publish(altitude)

                    # Check if the altitude exceeds the threshold
                    # Check if the altitude exceeds the threshold
                    if altitude > threshold:
                        if time_above_threshold is None:
                            # Set the initial time when altitude exceeds the threshold
                            time_above_threshold = time()

                        # If drone stays above threshold for more than 5 seconds, trigger the warning
                        if time() - time_above_threshold > 5 and not warning_triggered:
                            rospy.loginfo("Altitude exceeded threshold for 5 seconds. Triggering warning.")
                            trigger_altitude_warning()
                            warning_triggered = True

                    else:
                        # Reset the time and warning flag if altitude is below threshold
                        time_above_threshold = None
                        warning_triggered = False
                        rospy.loginfo("Altitude is below threshold. ALT WARN indicator should be green.")
                

                except Exception as e:
                    rospy.logerr(f"Error calculating altitude: {e}")
            
            # Sleep for the specified rate (10 Hz)
            rospy.Rate(10).sleep()

    except rospy.ROSInterruptException:
        pass
