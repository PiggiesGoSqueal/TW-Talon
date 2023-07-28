
# I obtained this info via: 
# 	1. Talon repl (Python console) 
# 	2. Type: actions.list("tracking")
# 	3. Enter. All these python functions are available for use within your .talon files I think based off examples seen in TW-Community\plugins\mouse\mouse.talon

# In Talon File:
# CONFIRM IN TALON:
# - eye tracking is enabled with control mouse and zoom enabled.
# - If it works then make non-conflicting unique aliases for zoom and click. (zee ; see ? OR clay ; day) 
zoom click:
	#tracking.control_zoom_enabled(true)
	# Trigger Eye Zoom / Click:
	tracking.zoom()

click test:
	mouse_key(0)
	#tracking.control_zoom_enabled(false)
	# Cancel Eye Zoom:
	tracking.zoom_cancel()

