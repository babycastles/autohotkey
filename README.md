# What is AutoHotkey?
AutoHotkey is a free, open-source scripting language to automate processes in Windows.

AutoHotkey's focus is on keyboard shortcuts, hotkeys and macros.

Babycastles uses AutoHotkey to turn computers into arcade machines, by doing things like:
* Hiding the system cursor
* Hiding the taskbar
* Running a game
* Running JoyToKey
* Mapping all of these things to the middle mouse button

By adding an AutoHotkey script to the Windows Startup folder, the AutoHotkey script can run when the computer turns on.

## Using AutoHotkey
![download_screenshot](/screenshots/download.png?raw=true)

0. Click **Clone or download** on this repo and choose **Download ZIP**
0. Unzip the contents into the game folder
0. Modify runner.ahk to fit your particular needs
0. Make a shortcut to runner.ahk in the startup folder

### TODOS

0. Explain each of the util scripts in detail (and batch file)
0. Define command vs function
0. Explain run command - https://www.autohotkey.com/docs/commands/Run.htm
0. Explain process command  - can be used to close a target process (by PID or name) - https://www.autohotkey.com/docs/commands/Process.htm

#### Explain 
omit a parameter by adding a comma

Explain options for run 

Options

Max: launch maximized

Min: launch minimized

Hide: launch hidden (cannot be used in combination with either of the above)

Explain 
ExitApp

Explain
ORDERING - https://www.autohotkey.com/docs/Scripts.htm
The Top of the Script (the Auto-execute Section)

After the script has been loaded, it begins executing at the top line, continuing until 
	a Return, Exit, hotkey/hotstring label, or the physical end of the script is encountered (whichever comes first). 
This top portion of the script is referred to as the auto-execute section.
