# Python Module to Measure the Distance of the obstacle from the ultrasonic sensor HC-SR04
# Developed By : Chirag Juneja

import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)

# Default Pin Settings
trig=2
echo=3
# function to measure the distance of the obstacle
def distance(trig,echo):
        #configure the sensor pins
        GPIO.setup(trig,GPIO.OUT)
        GPIO.setup(echo,GPIO.IN)
        GPIO.output(trig,False)
        time.sleep(1)
        
        #sending the trigger pulse
        GPIO.output(trig,True)
        time.sleep(0.00001)
        GPIO.output(trig,False)
        
        #waiting to recieve the pulse
        while GPIO.input(echo)==0:
                pulse_start=time.time()
        while GPIO.input(echo)==1:
                pulse_end=time.time()
        
        #calculating the distance
        pulse_duration=pulse_end-pulse_start
        distance = pulse_duration*17150
        distance=round(distance,2)
        return distance
        GPIO.cleanup()
dis=distance(trig,echo)
print "Distance",dis,"cm"

