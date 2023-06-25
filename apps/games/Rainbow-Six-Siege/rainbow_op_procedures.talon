# File Name: rainbow_op_procedures.talon
# Game: Rainbow Six Siege
# Version: 0.0.1
# Author: Tom W.
# Purpose:
# - Sometimes there are a set of tasks I often need to do. Instead of having to do 3+ separate voice commands for these I can just specify one voice command that does all of the steps in order.
# 	* NOTE: Cannot do procedures that require left/right mouse clicking. I was able to set middle click to 3 keybind but cannot switch right/left key to something else for placing things like Rook's armor.

title: Rainbow Six
-

settings():
	key_hold = 200.0
    key_wait = 100.0

# Not-Specific Op Procedures:
# - NEED TO TEST
place shield:
	# need to confirm this is proper key:
	key(g)
	# place (need to confirm proper key & that it works):
	mouse_click(0)