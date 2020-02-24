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
0. Unzip the contents by right-clicking the downloaded zip and selecting **Extract All...**
0. Move the contents of the unzipped folder into the folder of your game
0. Modify runner.ahk to fit your particular needs [(see the Building your script section)](#building-your-script) 

### If you want your game/autohotkey script to run on startup (you probably do!), then do this...
0. Press the Windows logo key **+ R**, type `shell:startup`, then select OK. The startup folder opens.
0. Create a shortcut to **runner.ahk** in the startup folder
   1. Right-click and hold **runner.ahk**
   2. While still holding the right-click, drag the file into the startup folder
   3. Release the right-click and select **Create shortcuts here**

### Building your script

0. Open **runner.ahk** in a text editor (Right-click and **Open With** Notepad++ or Notepad)

For most use cases, you can just modify the `Refresh` method to run your game.
![refresh-example](/screenshots/refresh-example.png?raw=true)

0. Replace **MyGame.exe** in `Run	"MyGame.exe"` with the name of your game file

Running this script will:

0. Close and quit all open programs and folders
0. Hide the system cursor
0. Hide the taskbar
0. Run the specified game/executable
0. Enable the hotkeys specified in [utils/hotkeys.ahk](./utils/hotkeys.ahk) - [see the Hotkeys section](#hotkeys) 

### Hotkeys

The [utils/hotkeys.ahk file](./utils/hotkeys.ahk) is where we define hotkeys/shortcuts to perform certain tasks.

Defaults are:
* Windows logo key **+ A**
   * Reloads the AutoHotKey script
* Windows logo key **+ T**
   * Toggles the taskbar
* Windows logo key **+ C**
   * Toggles the cursor
* Windows logo key **+ Z**
   * Quits AutoHotKey script and runs the ExitFunction 

### TODO/explain

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
