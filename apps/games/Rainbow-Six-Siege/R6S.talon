# I suspect talon slowed down when I separated all my cmds into diff files. Maybe having it all in 1 file will help?

# In R6S controls it may be best to enable toggling of sprinting so I can remove "stop sprint | stint" and just say "sprint" to stop.

# File Name: R6S.talon
# Game: Rainbow Six Siege
# Version: 1.0.0
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

# ==================================
# File Name: rainbow_actions.talon
# Game: Rainbow Six Siege
# Version: 0.0.2
# Author: Tom W.
# Still need:
# - (optional) to set R6S ability action keys from R/L mouse buttons to keyboard buttons (I.e. n & m) then set voice cmds for them like "abil 1" & "abil 2"
# 		* But for now fine with manual clicking.

# Gun and Misc Changing
primary: key(1)
secondary: key(2) 
press F: key(f)
press G: key(g)
press X: key(x)
press seven: key(7)
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
jump: key(space)
hold jump:
	key(space:down)
	key(w:down)
	sleep(200ms)
	key(w:up)
	key(space:up)
	key(space)

climb | climb up | climb in:
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
# ======================================
# File Name: rainbow_firing.talon
# Game: Rainbow Six Siege
# Version: 0.0.2
# Author: Tom W.

# Shooting / Aiming:
# - L/R Mouse click interactions do not work.
# - Requires fire key be "J" and aim key be "K"
# - Should not flag anti-cheat because it does not change the game it only simulates keyboard strokes. However, I cannot be sure so anyone using this should not hold me responsible for their account getting banned. It is recommended to only do this on an alt account. 

aim: key(k:down)

# stop aim
staim: key(k:up)

# Single-Fire Gun Firing (Sire/Si)
sire | si: key(j)
sire two | si two: key(j j)
sire three | si three: key(j j j)
sire four | si four: key(j j j j)

# Fire an automatic gun for a quick period of time
quick fire | quick:
	key(j:down)
	sleep(1s)
	key(j:up)

# Fire an automatic gun for a short period of time
fire | short fire | short:
	key(j:down)
	sleep(2s)
	key(j:up)

# Fire an automatic gun for a longer period of time
long fire | long:
	key(j:down)
	sleep(3s)
	key(j:up)
# =================================
# File Name: rainbow_GUI.talon
# Game: Rainbow Six Siege
# Version: 0.0.2
# Author: Tom W.

# Arrow Keys (for interacting with GUIs)
arrow right: key(right)
arrow left: key(left)
arrow up: key(up)
arrow down: key(down)

enter: key(enter)
escape: key(escape)
hold tab: key(tab:down)
release tab: key(tab:up)
press tab:
	key(tab:down)
	sleep(3s)
	key(tab:up)
