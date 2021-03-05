import RPi.GPIO as GPIO
import os, sys
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from lib import printer
from time import sleep

#Set warnings off (optional)
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
#Set Button pins
Button = 21
#Setup Button
GPIO.setup(Button,GPIO.IN,pull_up_down=GPIO.PUD_UP)
backlight_state = 0
while True:
    button_state = GPIO.input(Button)
    if button_state == 0:
        backlight_state = not backlight_state
        printer.backlight_ctl(backlight_state)
        sleep(0.5)
