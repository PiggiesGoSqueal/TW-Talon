# File Name: rainbow_six_siege.talon
# Game: Rainbow Six Siege
# Version: 0.1.0
# Author: Tom W.

title: Rainbow Six
-

# key_wait increases the delay when pressing keys (milliseconds)
# this is useful if an app seems to jumble or drop keys
settings():
	key_hold = 200.0
    key_wait = 100.0


# ==============================

# Movement Commands
walk: key(w:down)
stop walk | stalk: key(w:up)
	
sprint:
	# Stop aiming if enabled
	key(k:up)
	key(shift:down w:down)
stop sprint | stint:
	key(shift:up)
	key(w:up)
	
retreat: key(s:down)
stop retreat | streat: key(s:up)

go left | geft: key(a:down)
stop left | steft: key(a:up)
	
go right | gight : key(d:down)
stop right | stight: key(d:up)

# Positions (say them again to undo them)
crouch: key(c) 
lay: key(ctrl) 
lean left | lean: key(q)
lean right | rean: key(e)

# Stop all movement
stop move | stop movement | stoove:
	key(w:up)
	key(a:up)
	key(s:up)
	key(d:up)
	key(shift:up)
	key(q)
	key(e)

reset keys | reset:
	key(w:up)
	key(a:up)
	key(s:up)
	key(d:up)
	key(q:up)
	key(e:up)
	key(j:up)
	key(k:up)
	key(1:up)
	key(2:up)
	key(f:up)
	key(g:up)
	key(shift:up)
	key(space:up)
	key(ctrl:up)
	key(c:up)
	key(v:up)
	key(z:up)
	key(x:up)
	key(y:up)
	key(t:up)
	key(r:up)
	key(e:up)
