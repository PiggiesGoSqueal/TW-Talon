# TW-Talon
 Talon scripts I'll use. 

For now I'm using this to play Rainbow Six Siege using voice commands and my mouse (just to look around). For anyone else who would like to do that follow these instructions:

How to play Rainbow Six Siege Using Voice Cmds and a Mouse to look around

Note these steps are for Windows users. Idk if it works on Mac.

Steps:
1. Download & install Talon Voice software ( https://talonvoice.com/ )
2. Start talon voice software. 
3. Check bottom right of your screen and click the '^' icon. Hover the icons until you see the Talon Voice icon. It may look kind of like a pair of headphones(?). Drag the icon down to your task bar so it always shows when it is running. 
4. On the bottom right of your screen right click talon icon. 
	a. Under the "Speech Recognition" section confirm:
		- Enabled is checked.
		- Command mode is checked.
		- Then install the "Conformer" speech recognition from there and confirm it is enabled.
	b. Under the "Scripting" section click "Open ~\Talon", which will open a folder in File Explorer.
	c. In the File Explorer window open the "user" folder.

4. In your web browser download this Github project. Unzip it and store the TW-Talon folder inside the Talon\User folder path in File Explorer.

5. Confirm this file path exists: "    TW-Talon/apps/games/Rainbow-Six-Siege" with several .talon files in it.

6. Go to your tray at the bottom right of your screen, right click the Talon icon, click "Quit Talon".

7. Re-open talon by searching for it in the Windows search bar. 

8. In File Explorer go to the folder path where "TW-Talon/apps/games/Rainbow-Six-Siege" exists. Then view "R6S-Command-List.txt" for a list of voice commands (& their aliases) that exist once Rainbow Six Siege is open. Note this does not work on R6S Vulkan unless you change the title name in each of the files.

Requirements for Rainbow Six Siege Controls:
 - shoot to be J keybind
 - aim to be K keybind
 - special ability controls:
	* primary gadget (normally middle click) should be set to middle click & 3 keybind.
	* secondary gadget (normally 3 & G) should be set to 4 & G.  
	* Used in rainbow_op_procedures.talon for example.
 - observation tool controls section:
	* shoot: N 
	* primary action: M