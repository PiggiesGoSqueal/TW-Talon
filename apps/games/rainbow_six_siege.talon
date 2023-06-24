title: Rainbow Six
-

# key_wait increases the delay when pressing keys (milliseconds)
# this is useful if an app seems to jumble or drop keys
settings():
	key_hold = 200.0
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
#
# Best Ops For Voice Cmds:
# - Ops with high amounts of ammo and ideally less recoil.
# - High health
# - Shotguns with low recoil that will take down an opponent in 1-2 shots. Especially as you do not need to have precise aim to do this.
# 	* Azami's shotgun does not count as this.
# - Traps and claymores are favorable. 
# 
# Requires:
# - shoot to be J keybind
# - aim to be K keybind
# 
# Add a way to say a disclaimer to teammates:
# 
# NEED TO MAKE DISCLAIMER FASTER TO TYPE
# need to make barricade have a timer b4 it stops so I dont have to say stop barricade
# ==============================
# Disclaimer to players
disclaimer:
	key(y)
	"Fair warning I'm going to suck b/c I'm playing by voice commands not keyboard."
	key(enter)
	key(y)
	"Also I have to toggle fire so if I'm firing do not walk in front of me"
	key(enter)

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
press F: key(f)
press G: key(g)
drone | 6: key(6)
drop diffuser: key(z)

# Actions
jump | climb: key(space)
climb in | climb up | stop climb | stimb:
	key(space:down)
	sleep(2s)
	key(space:up)

hold f | barricade: 
	key(f:down)
	sleep(4)
	key(f:up)

release f | stop f | stop barricade: key(f:up)

view cameras | cameras: key(5)
reload: key(r)
mid click | middle click | special ability | ability | ility:
    mouse_click(2)
knife | stab | dagger: key(v)

scan: key(x:down)
stop scan | stan: key(x:up)

# Shooting / Aiming:
# - L/R Mouse click interactions do not work.
# - Requires fire key be "J" and aim key be "K"
# - Should not flag anti-cheat because it does not change the game it only simulates keyboard strokes. However, I cannot be sure so anyone using this should not hold me responsible for their account getting banned. It is recommended to only do this on an alt account. 

auto fire | a fire: key(j:down)
stop fire | stire: key(j:up)
fire | single fire | sire | si: key(j)
fire two | single fire two | sire two | siwo:
	key(j)
	repeat(1)
fire three | single fire three | sire three | sithree:
	key(j)
	repeat(2)
aim: key(k:down)
stop aim | staim: key(k:up)

timed fire:  
	key(k:down)
	key(j:down)
	sleep(3s)
	key(j:up)
	key(k)

# Arrow Keys (for interacting with GUIs)
arrow right | arright: key(right)
arrow left | arreft: key(left)
arrow up | arrup: key(up)
arrow down | ardown: key(down)
enter: key(enter)
escape | esc | close: key(escape)

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
	key(j:up)
	key(k:up)
	
# Simple keys example with repeat
#walk [<user.n20>]: key("W:{n20 or 1}")
#walk [<user.n20>]: key("W:{n20 or 1}")