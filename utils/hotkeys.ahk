; Press Win-A to Reload Autohotkey
#a::Reload

; Press Win-T to toggle the tray, if script is imported
if (IsFunc("TaskBarToggle")) {
	#t::TaskBarToggle()
}

; Press Win-C to Toggle the system cursor, if script is imported
if (IsFunc("SystemCursor")) {
	#c::SystemCursor("Toggle")
}

; Press Win-Z to exit the script
#z::ExitFunction()

ExitFunction() {
	if (IsFunc("SystemCursor")) {
		SystemCursor("On")
	}
	if (IsFunc("ShowTaskBar")) {
		ShowTaskBar()
	}
	ExitApp
}
