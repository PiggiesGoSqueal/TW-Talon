# activate this .talon file if the current app name is "Chrome"
# you can find app names by running ui.apps() in the REPL
#app.name: RainbowSix
title: Rainbow Six
-

# key_wait increases the delay when pressing keys (milliseconds)
# this is useful if an app seems to jumble or drop keys
settings():
	key_hold = 75.0
    key_wait = 100.0

# ==============================
# IMPORTANT NOTES:
# - If you put a comment after a line 
#   of code the line of code WILL NOT WORK. 
#   Make sure comments are on entirely 
#   separate lines.
# - I can use mouse interactions by assigning
#   shoot/aim to keyboard keys. Although I'm not 
#   sure if I should. It is slower, less accurate,
#   and most importantly may flag the anti-cheat although
#   it's not an aim bot it just fires.. So idk. Plus click speed
#   does not change fire speed unless it's a single fire gun but I cannot speak fast enough (& have the program load fast enough) for it to be unfair for others so I should be fine.
# ==============================

# Movement Voice Commands
walk: key(w:down)
stop walk | stalk: key(w:up)
	
sprint: key(shift:down w:down)
stop sprint | stint:
	key(shift:up)
	key(w:up)
	
retreat: key(s:down)
stop retreat | streat: key(s:up)

go left: key(a:down)
stop left | steft: key(a:up)
	
go right: key(d:down)
stop right | stight: key(d:up)

# Positions (say them again to undo them)
crouch: key(c) 
lay: key(ctrl) 
lean left | lean: key(q)
lean right | rean: key(e)

# Gun and Misc Changing
primary: key(1)
secondary: key(2) 
press F | F: key(f)
press G | G: key(g)
drone | 6: key(6)
drop diffuser: key(z)

# Actions
climb | vault | rappel: key(space)
view cameras | cameras: key(5)

# Requires fire key be "J" and aim key be "K"
# Mouse key interactions do not work.
# Noteworthy may not be worth doing fire automations 
# with mouse as it may incorrectly flag anti-cheat (unless single fire and not too quickly repeated).
fire: key(j:down)
stop fire | stire: key(j:up)
single fire | sire: key(j)
aim: key(k:down)
# Stop all movement
stop move | stop movement | stoove:
	key(w:up)
	key(a:up)
	key(s:up)
	key(d:up)
	key(shift:up)
	key(q)
	key(e)
stop aim | staim: key(k:up)
knife | stab | dagger: key(v)
# Walk backwards toggle
#back: key(s)
#stop back: key(s)

# Misc
reload: key(r)

mid click | middle click | special ability | ability:
    mouse_click(2)

reset keys | reset:
	key(w:up)
	key(a:up)
	key(s:up)
	key(d:up)
	key(q:up)
	key(e:up)
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
	
# Simple keys example with repeat
#walk [<user.n20>]: key("W:{n20 or 1}")
#walk [<user.n20>]: key("W:{n20 or 1}")