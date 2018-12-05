# Python Module to generate a custom voice message and plays a custom song when the alarm goes off
# Developed By : Chirag Juneja 
import vlc
import time
import pyttsx
import datetime

#set up text to speech and alarm tone

engine=pyttsx.init()	#python text to speech engine
engine.setProperty('rate',120)	#set the rate of the speech 
p=vlc.MediaPlayer("file:///media/warmachine/Work/Codes/alarm/alarm.mp3") #path of the mp3 file for alarm tone

#python alarm

print("\n\n\tWelcome to Python Alarm \n\tSet up alarm")

#set the time for the alarm

sethour=int(raw_input("\thour:")) 	#take hour value
setmin=int(raw_input("\tmin:")) 	#take minute value
s=str(raw_input("\tLable:")) 		#take lable of the alram 

#alarm time is set

print("\n\tAlarm Deployed\n")

# check the time 

while True:
	t=datetime.datetime.now()	#take present time
	h=t.hour
	m=t.minute
	if h == sethour:		#check hour value
		if m == setmin:		#check minute value
			print("\t"+s)	#print lable
			engine.say(s)	#say the lable
			engine.runAndWait()
			p.play()	#play the alarm tone
			time.sleep(60)	#sleep of a minute to for m value to change






