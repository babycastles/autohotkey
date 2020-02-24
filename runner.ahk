; First include desired code (no hotkeys yet!)
#Include utils/system_cursor.ahk
#Include utils/taskbar_toggle.ahk

; Then add Auto-execute code
; Run Refresh Script
Refresh()

; Then include hotkeys
#Include utils/hotkeys.ahk

; Hotkey your refresh script to the Middle Mouse Button
MButton::Refresh()

; Define your functions here
Refresh()
{
	; Kill all open windows/programs
	RunWait "utils/kill.bat"
	; Hide the cursor
	SystemCursor("Off")
	; Hide the taskbar
	HideTaskBar()
	
	; Run game - ADD YOUR GAME HERE!
	Run	"MyGame.exe"
}
