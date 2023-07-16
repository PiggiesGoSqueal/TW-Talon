# File Name: R6S-Short.talon
# Game: Rainbow Six Siege
# Version: 2.0.0
# 	- Changes:
# 		* Reduced number of commands to improve Talon voice recognition speed. Requires using hands in limited amounts.
# 		* Note: Cannot shorten fire cmds too much b/c already confirmed it = false positives.
# Author: PiggiesGoSqueal

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
# Category: rainbow_actions

# Actions
jump: key(space)

# barricade
barricade | reinforce: 
	key(f:down)
	sleep(5)
	key(f:up)

# yellow ping
ping: key(z)

# red ping
scan: 
	key(x:down)
	sleep(2s)
	key(x:up)
# ======================================
# Category: rainbow_firing

# Shooting / Aiming:
# - L/R Mouse click interactions do not work.
# - Requires fire key be "J" and aim key be "K"
# - Should not flag anti-cheat because it does not change the game it only simulates keyboard strokes. However, I cannot be sure so anyone using this should not hold me responsible for their account getting banned. It is recommended to only do this on an alt account. 

aim: key(k:down)

# stop aim
staim: key(k:up)

# Single-Fire Gun Firing (Sire/Si)
si: key(j)
si two: key(j j)
si three: key(j j j)
si four: key(j j j j)

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
# Category: rainbow_GUI

enter: key(enter)
