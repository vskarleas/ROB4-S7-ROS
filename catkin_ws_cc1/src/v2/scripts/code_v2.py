#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32
from math import log

from mydrone.srv import alt_warning

from time import time

measured_temperature = None
measured_pressure = None
time_before = None

computed_altitude = None

def temperature_callback(data):
    global measured_temperature
    measured_temperature = data.data
    # rospy.loginfo("Temperature callback: %f", measured_temperature)
    compute_altitude()

def pressure_callback(data):
    global measured_pressure
    measured_pressure = data.data
    # rospy.loginfo("Pressure callback: %f", measured_pressure)
    compute_altitude()

def talker():
    publisher = rospy.Publisher('/altitude', Float32, queue_size=10)
    return publisher

def trigger_warning(msg):
    try:
        rospy.wait_for_service('/altitude_warning')
        # rospy.loginfo("Warning light is red. Triggering altitude warning service.")
        rospy.loginfo(f"Message: {msg}")
        service = rospy.ServiceProxy('/altitude_warning', alt_warning)
        response = service(message=msg)
        rospy.loginfo(f"Service response: {response.response}")

    except rospy.ServiceException as error:
        rospy.logerr(f"Service call failed: {error}")
    
def compute_altitude():
    # Calculating
    global time_before, computed_altitude

    if measured_pressure is not None and measured_temperature is not None:
        computed_altitude = (8.31432 * measured_temperature / (0.0289644 * 9.80665)) * log(101325 / measured_pressure)
        rospy.loginfo("Altitude: %f", computed_altitude)

        threshold = rospy.get_param('threshold', 15)
        rospy.loginfo(f"Threshold value: {threshold}")

        if computed_altitude > threshold:
            if time_before is None:
                time_before = time()

            if time() - time_before > 5:
                trigger_warning("WARNING")
                rospy.loginfo("Sent RED\n")
        else:
            time_before = None  # Reset the time when altitude goes below the threshold
            trigger_warning("NORMAL")
            rospy.loginfo("Sent GREEN\n")

    else:
        rospy.loginfo("No data received from subscribers yet.")




if __name__ == '__main__':
    try:
        rospy.init_node('exam_node', anonymous=False)
        rospy.loginfo("Exam node initialised.")

        rospy.Subscriber('/temperature', Float32, temperature_callback, queue_size=10)
        rospy.Subscriber('/pressure', Float32, pressure_callback, queue_size=10)

        # We create the publisher
        pub = talker()

        while not rospy.is_shutdown():
            pub.publish(Float32(computed_altitude))
            rospy.Rate(10).sleep() # if it is not wished to use a rate, then we use rospy.spin()


    except rospy.ROSInterruptException:
        pass