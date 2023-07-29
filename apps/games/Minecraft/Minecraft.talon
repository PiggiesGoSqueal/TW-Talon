
title: Minecraft* 1.20.1 - Multiplayer (3rd-party Server)
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
	# Stop blocking if enabled
	mouse_key(1:up)
	key(e:down w:down)
	
# stop sprint
stint:
	key(e:up)
	key(w:up)
	
retreat: key(s:down)

# to stop retreat just say "stop" which will stop all movement

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
right one:
	key(d:down)
	sleep(300ms)
	key(d:up)

# right short
right two:
	key(d:down)
	sleep(500ms)
	key(d:up)

# right long
right three:
	key(d:down)
	sleep(1s)
	key(d:up)

# left quick 
left one:
	key(a:down)
	sleep(300ms)
	key(a:up)

# left short
left two:
	key(a:down)
	sleep(500ms)
	key(a:up)

# left long
left three:
	key(a:down)
	sleep(1s)
	key(a:up)

# ---------------------
# Positions (say them again to undo them)
shift: key(shift:down)
stop shift: key(shift:up)  

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


first: key(1)
second: key(2)

# Weapon and Ability Interactions
reload: key(r)

# Middle click, special ability
mid click:
    mouse_click(2)
	#key(3)
	
# Actions
jump: key(space)
hold jump:
	key(space:down)
	key(w:down)
	sleep(200ms)
	key(w:up)
	key(space:up)
	key(space)

enter: key(enter)
escape: key(escape)