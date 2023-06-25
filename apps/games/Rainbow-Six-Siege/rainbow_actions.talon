# File Name: rainbow_actions.talon
# Game: Rainbow Six Siege
# Version: 0.0.1
# Author: Tom W.
# Still need:
# - (optional) to set R6S ability action keys from R/L mouse buttons to keyboard buttons (I.e. n & m) then set voice cmds for them like "abil 1" & "abil 2"
# 		* But for now fine with manual clicking.

title: Rainbow Six
-

settings():
	key_hold = 200.0
    key_wait = 100.0


# Gun and Misc Changing
primary: key(1)
secondary: key(2) 
press F: key(f)
press G: key(g)
drone: key(6)
diffuse: key(x)
drop diffuser: key(z)

# Weapon and Ability Interactions
reload: key(r)

# NEED TO TEST. In Controls I set the middle click to work and '3' to be its alias. May make it more reliable.
mid click | middle click | ability | ility:
    #mouse_click(2)
	key(3)
	
knife | stab | dagger: key(v)

# Actions
jump | climb in: key(space)
climb | climb up | stop climb | stimb:
	key(space:down)
	sleep(2s)
	key(space:up)

hold f | barricade | reinforce: 
	key(f:down)
	sleep(5)
	key(f:up)

release f: key(f:up)

# Intel Gathering
view cameras | cameras: key(5)
yellow ping | ping: key(z)
scan: key(x:down)
stop scan | stan: key(x:up)
