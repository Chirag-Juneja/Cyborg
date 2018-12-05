# HC-SR04_RaspberryPi
A python library to use HC-SR04 ultrasonic module with raspberry pi.
Either be in same directory or add this file in python path.

* Import hcsr04 library

```sh
 import hcsr04
```
* Default pin settings
```sh
 trigger = GPIO pin 2
 echo = GPIO pin 3
```
* Measure Distance
Use the distance function to measure the distance of the obstricle in centimeters
enter trigger and echo pins as arguments of the fucntion

```sh
 dis=distance(trig,echo)
```
