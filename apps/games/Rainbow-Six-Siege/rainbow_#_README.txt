 ==============================
 IMPORTANT NOTES:
 - If you put a comment after a line 
   of code the line of code WILL NOT WORK. 
   Make sure comments are on entirely 
   separate lines.

- Whenever changing/adding a function name be sure to update it in R6S-List-Of-Cmds.txt.

 - I can use mouse interactions by assigning
   shoot/aim to keyboard keys. Although I'm not 
   sure if the anti-cheat will falsely detect it as a 'hack'.

 Best Ops For Voice Cmds:
 - High health
 - Shotguns with low recoil that will take down an opponent in 1-2 shots. Especially as you do not need to have precise aim to do this.
 	* Azami's shotgun does not count as this.
 - Traps and claymores are favorable. 
 
 Requires:
 - shoot to be J keybind
 - aim to be K keybind
 - special ability controls (among other things?):
	* primary gadget (normally middle click) should be set to middle click & 3 keybind.
	* secondary gadget (normally 3 & G) should be set to 4 & G.  
	* Used in rainbow_op_procedures.talon for example.
 - observation tool controls section:
	* shoot: N 
	* primary action: M 
	
 - Recommended to use earbuds. Else disable hearing voice chat.

 Improvements needed:
 - make a way for talon to sleep but just long enough for me to say something in vc. I.e. "ignore <msg> awake" will sleep, allow me to speak, then bring it awake again.
 - Have a "required_keybinds.txt" file logging all required keys to make it work & what is NOT default. That way if they get reset I can fix it without extensively looking thru all my code.
	* Note: It appears in the Controls settings there are diff sections and you CAN overlap keybinds as long as they're in diff sections I think.
	* Note: it is possible to assign 2 keys per control. However, it's generally best to leave it to 1 key (I.e. to not allow mouse to shoot/aim) so that I rely fully on voice commands instead of using my hands)