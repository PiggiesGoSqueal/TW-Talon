
# I obtained this info via: 
# 	1. Talon repl (Python console) 
# 	2. Type: actions.list("tracking")
# 	3. Enter. All these python functions are available for use within your .talon files I think based off examples seen in TW-Community\plugins\mouse\mouse.talon

# In Talon File:
# CONFIRM IN TALON:
# - eye tracking is enabled with control mouse and zoom enabled.
# - If it works then make non-conflicting unique aliases for zoom and click. (zee ; see ? OR clay ; bay) 
zoom | clay:
	#tracking.control_zoom_enabled(true)
	# Trigger Eye Zoom / Click:
	tracking.zoom()

zoom cancel | click:
    mouse_click(0)
    # close the mouse grid if open
    user.grid_close()
    # End any open drags
    # Touch automatically ends left drags so this is for   right drags specifically
    user.mouse_drag_end() 
	tracking.zoom_cancel()
	#tracking.control_zoom_enabled(false)

