
State := 0

Menu, Tray, Icon, AutoClickerOff.ico

F4::
  if (state = 1) {
    State := 0
    Menu, Tray, Icon, AutoClickerOff.ico
  } Else {
    State := 1
    SetTimer, Click, 200	; milliseconds between repeats.
    Menu, Tray, Icon, AutoClickerOn.ico
  }
  Return

Click:
	if (State = 1) {
    ControlClick, ,War,, Left
  }
	Return

ESC:: ; in case something goes horribly wrong press escape to nuke the script
ExitApp