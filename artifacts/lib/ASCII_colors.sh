#!/bin/bash

#---------------------------------------------------------------------------------------
echo ' ______  ____    ____    ______  ______      ____     _____   __       _____   ____    ____       ';
echo '/\  _  \/\  _\`\ /\  _\`\ /\__  _\/\__  _\    /\  _\`\  /\  __\`\/\ \     /\  __\`\/\  _\`\ /\  _\`\     ';
echo '\ \ \L\ \ \,\L\_\ \ \/\_\/_/\ \/\/_/\ \/    \ \ \/\_\\ \ \/\ \ \ \    \ \ \/\ \ \ \L\ \ \,\L\_\   ';
echo ' \ \  __ \/_\__ \\ \ \/_/_ \ \ \   \ \ \     \ \ \/_/_\ \ \ \ \ \ \  __\ \ \ \ \ \ ,  /\/_\__ \   ';
echo '  \ \ \/\ \/\ \L\ \ \ \L\ \ \_\ \__ \_\ \__   \ \ \L\ \\ \ \_\ \ \ \L\ \\ \ \_\ \ \ \\ \ /\ \L\ \ ';
echo '   \ \_\ \_\ \`\____\ \____/ /\_____\/\_____\   \ \____/ \ \_____\ \____/ \ \_____\ \_\ \_\ \`\____\';
echo '    \/_/\/_/\/_____/\/___/  \/_____/\/_____/    \/___/   \/_____/\/___/   \/_____/\/_/\/ /\/_____/';
echo '                                                                                                  ';
echo '                                                                                                  ';
echo "Made by: slowloris-coding"
echo "-------------------------"
echo "https://github.com/slowloris-coding"

# Every color and effect witch is used in the same printf statement will be there until the N_ ("no" / "not") variable of the used variable is used.
# For disabling colors every attribute has to be removed.
# Effects can be stackt, colors not
# !! "printf" has to be used, it will not work with "echo" !!

#----------------------------------------------------------------------------------------------------------------------------------------------------------
#==========================
# FORMATING & EFFECTS
#==========================

NEWLINE='\n'                # Newline for printf

N_ATTRIB='\033[0m'          # "No Attribute", disabling all effects

BOLD='\033[1m'              # Bold in/output
DIM='\033[2m'               # dimmed in/output
UNDERLINED='\033[4m'        # underlined in/output
BLINK='\033[5m'             # blinking in/output
REVERSE_COLOR='\033[7m'     # inverted in/output color
HIDDEN='\033[8m'            # hidden in/output, like passwords in ubuntu or other debian distros (the in/output will not appear but is still there)

N_BOLD='\033[21m'           # "not bold", disabling the "bold" attribute
N_DIM='\033[22m'            # "no dim", disabling the "dim" attribute
N_UNDERLINED='\033[24m'     # "not undelined", disabling the "underlined" attribute
N_BLINK='\033[25m'          # "no blinking", disabling the "blink" attribute
N_REVERSE_COLOR='\033[27m'  # "no reverse", disabling the "reverse" (invert) attribute 
N_HIDDEN='\033[28m'         # "not hidden", disabling the "hidden" attribute

#----------------------------------------------------------------------------------------
#====================
# FOREGROUND COLORS
#====================

# F_XXXX --> foreground colors
# F_L_XXXXX --> light forground colors (e.g. F_L_GREEN = light green)
# F_D_XXXXX --> dark foreground colors (e.g. F_D_GREY = dark grey)

F_DEFAULT='\033[39m'
F_Black='\033[30m'
F_RED='\033[31m'
F_GREEN='\033[32m'
F_YELLOW='\033[33m'
F_BLUE='\033[34m'
F_MAGENTA='\033[35m'
F_CYAN='\033[36m'
F_WHITE='\033[97m'


# light colors

F_L_GREY='\033[37m'
F_L_RED='\033[91m'
F_L_GREEN='\033[92m'
F_L_YELLOW='\033[93m'
F_L_BLUE='\033[94m'
F_L_MAGENTA='\033[95m'
F_L_CYAN='\033[96m'


# dark colors

F_D_GREY='\033[90m'

#----------------------------------------------------------------------------------------
#====================
# BACKGROUND COLOR
#====================

# B_XXXXX --> background colors
# B_L_XXXX --> light background colors (e.g. B_L_GREEN = light green)
# B_D_XXXX --> dark background colors (e.g. B_D_GREY = dark grey)

B_DEFAULT='\033[49m'
B_Black='\033[40m'
B_RED='\033[41m'      
B_GREEN='\033[42m'    
B_YELLOW='\033[43m'   
B_BLUE='\033[44m'
B_MAGENTA='\033[45m'
B_CYAN='\033[46m'
B_WHITE='\033[107m'

#HELLE FARBEN
B_L_GREY='\033[47m'
B_L_RED='\033[101m'
B_L_GREEN='\033[102m'
B_L_YELLOW='\033[103m'
B_L_BLUE='\033[104m'
B_L_MAGENTA='\033[105m'
B_L_CYAN='\033[106m'

#Dunkle Farben
B_D_GREY='\033[100m'

#--------------------------------------------------------------------------------------------
#===================================
#ALL POSSIBLE COLORS WITH ASCII CODE
#===================================

# F --> foreground color
# B --> background color
# The variablenames are structurized like this --> F(or B)_COLOR_ASCIICODE 
# (the color is always a color witch describes it the best)

# the Variables

