import I2C_LCD_driver
from time import *

mylcd = I2C_LCD_driver.lcd()
mylcd.lcd_display_string("***--------------***", 1, 0)
mylcd.lcd_display_string("Hello", 2, 4)
mylcd.lcd_display_string("World!", 3, 4)
mylcd.lcd_display_string("***--------------***", 4, 0)
