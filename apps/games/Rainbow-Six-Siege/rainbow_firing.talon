# File Name: rainbow_firing.talon
# Game: Rainbow Six Siege
# Version: 0.0.2
# Author: Tom W.

title: Rainbow Six
-

# key_wait increases the delay when pressing keys (milliseconds). This is useful if an app seems to jumble or drop keys
settings():
	key_hold = 200.0
    key_wait = 100.0

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
	key(k:down)
	key(j:down)
	sleep(1s)
	key(j:up)

# Fire an automatic gun for a short period of time
fire | short fire | short:  
	key(k:down)
	key(j:down)
	sleep(2s)
	key(j:up)

# Fire an automatic gun for a longer period of time
long fire | long:  
	key(k:down)
	key(j:down)
	sleep(3s)
	key(j:up)
