# File Name: rainbow_actions.talon
# Game: Rainbow Six Siege
# Version: 0.0.2
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
press X: key(x)
drone: key(6)
diffuse: key(x)
drop diffuser: key(z)

# Weapon and Ability Interactions
reload: key(r)

mid click | middle click | ability:
    #mouse_click(2)
	key(3)
	
knife | stab: key(v)

# Actions
jump | climb in: key(space)
climb | climb up:
	key(space:down)
	sleep(2s)
	key(space:up)

hold f | barricade: 
	key(f:down)
	sleep(5)
	key(f:up)

release f: key(f:up)

# Rook armor revive
revive: 
	key(f:down)
	sleep(7)
	key(f:up)

# Intel Gathering
view cameras | cameras: key(5)
yellow ping | ping: key(z)
scan: 
	key(x:down)
	sleep(2s)
	key(x:up)
