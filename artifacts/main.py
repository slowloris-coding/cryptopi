from lib import printer
import time

t = time.localtime()
current_time = time.strftime("%H:%M", t)
printer.display_menu(current_time, "normal", 3)
