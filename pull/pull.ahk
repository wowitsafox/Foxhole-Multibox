
State := 0

Menu, Tray, Icon, HaulerOff.ico

F2::
	if (State = 1) {
		State := 0
		Menu, Tray, Icon, HaulerOff.ico
  } Else {
		State := 1
		Menu, Tray, Icon, HaulerOn.ico
  	SetTimer, Pull, 1000	; milliseconds between repeats.
	}
	Return

Pull:
  if (state = 1) {
    SendInput +{Click}
  }
Return
