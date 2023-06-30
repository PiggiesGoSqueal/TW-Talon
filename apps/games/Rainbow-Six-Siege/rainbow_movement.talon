# File Name: rainbow_movement.talon
# Game: Rainbow Six Siege
# Version: 0.3.0
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
# stop walk:
stalk: key(w:up)
	
sprint:
	# Stop aiming if enabled
	key(k:up)
	key(shift:down w:down)
	
# stop sprint
stint:
	key(shift:up)
	key(w:up)
	
retreat: key(s:down)

# stop retreat 
streat: key(s:up)

# Alternatives
# stop these using "stop"
walk and right:
	key(w:down)
	key(a:down)

walk and left: 
	key(w:down)
	key(d:down)

# -------------------
# Directional movement
# Not using aliases due to 
# it misunderstanding as other cmds
# -------------------
# Go left
go left | left: key(a:down)

# stop left
stop left: key(a:up)
	
# Go right
go right | right: key(d:down)

# stop right
stop right: key(d:up)

# -----------------------
# Go right / left for X
# periods of time
# -----------------------
# right quick 
go right one:
	key(d:down)
	sleep(300ms)
	key(d:up)

# right short
go right two:
	key(d:down)
	sleep(500ms)
	key(d:up)

# right long
go right three:
	key(d:down)
	sleep(1s)
	key(d:up)

# left quick 
go left one:
	key(a:down)
	sleep(300ms)
	key(a:up)

# left short
go left two:
	key(a:down)
	sleep(500ms)
	key(a:up)

# left long
go left three:
	key(a:down)
	sleep(1s)
	key(a:up)

# ---------------------
# Positions (say them again to undo them)
crouch: key(c) 
lay: key(ctrl) 

# lean left
lean: key(q)

# lean right
rean: key(e)

# Stop movement
stop:
	key(w:up)
	key(a:up)
	key(s:up)
	key(d:up)
	key(shift:up)

# Stop everything
reset:
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
