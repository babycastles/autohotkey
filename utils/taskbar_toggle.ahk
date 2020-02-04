global TASK_BAR_HIDDEN := 0

TaskBarToggle() {
	if (TASK_BAR_HIDDEN=0)
	{
		HideTaskBar()
	}
	else 
	{
		ShowTaskBar()
	}
}

HideTaskBar() {
	WinHide ahk_class Shell_TrayWnd
	TASK_BAR_HIDDEN=1
}

ShowTaskBar() {
	WinShow ahk_class Shell_TrayWnd
	TASK_BAR_HIDDEN=0
}
