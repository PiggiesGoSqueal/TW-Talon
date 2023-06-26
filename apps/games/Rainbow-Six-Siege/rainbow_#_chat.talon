# File Name: rainbow_chat.talon
# Game: Rainbow Six Siege
# Version: 0.0.1
# Author: Tom W.

title: Rainbow Six
-

# Slows down the chat typing to human speeds so it is less likely to get falsely flagged by anti-spam or similar.
settings():
	key_hold = 16.0
    key_wait = 8.0
# SPEED IS UNRELATED TO THIS
# Maybe just enable voice to text accessibility feature?

# FOR SOME REASON CHAT IS STILL SUPER SLOW TO TYPE.
# FOR NOW JUST DO:
# "talon sleep"
# then say what I want in vc to disclaim etc.
# then "talon wake"

# Send in chat <phrase>
# Note: Punctuation/capitalization does not work.
^send <phrase>$:
	key(y)
    insert("{phrase}")
    key(enter)

send disclaimer | disclaimer:
	key(y)
	"Fyi I'm going to suck b/c I'm learning to play by voice commands not keyboard."
	key(enter)

send disclaimer two:
	key(y)
	"Also please don't walk in front of me while I am shooting because I won't be able to stop in time."
	send(enter)

send explanation: 
	key(y)
	"I have carpal tunnel in both of my hands so excessive hand use = pain."
	key(enter)

send keyboard explanation:
	key(y)
	"I have my explanations preset as their own voice commands."
	key(send)