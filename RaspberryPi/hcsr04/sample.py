# main file to measure the distance  
# Developed By : Chirag Juneja
import hcsr04
trig=2
echo=3
dis = hcsr04.distance(trig,echo)
print "Distacnce",dis,"cm"
