#MaxHotkeysPerInterval 99999999
#HotkeyInterval 99999999
State := 0

Menu, Tray, Icon, KranescaOff.ico

F3:: 
	if (State = 1) {
		State := 0
		Menu, Tray, Icon, KranescaOff.ico
	} Else {
		State := 1
		Menu, Tray, Icon, KranescaOn.ico
		SetKeyDelay, 0
	}
	Return

; forward
$Up::
	if (State = 1) {
		ControlSend,,{Up down},[#] War   [#]
	}
	Return
$Up UP::
	if (State = 1) {
		ControlSend,,{Up up},[#] War   [#]
	}
	Return

; backwards
$Down::
	if (State = 1) {
		ControlSend,,{Down down},[#] War   [#]
	}
	Return
$Down UP::
	if (State = 1) {
		ControlSend,,{Down up},[#] War   [#]
	}
	Return

; Right
$Right::
	if (State = 1) {
		ControlSend,,{Right down},[#] War   [#]
	}
	Return	
$Right UP::
	if (State = 1) {
		ControlSend,,{Right up},[#] War   [#]
	}
	Return

; Left
$Left::
	if (State = 1) {
		ControlSend,,{Left down},[#] War   [#]
	}
	Return
$Left UP::
	if (State = 1) {
		ControlSend,,{Left up},[#] War   [#]
	}
	Return

;boost
$RControl::
	if (State = 1) {
		ControlSend,,{RControl down},[#] War   [#]
	}
	Return
$RControl UP::
	if (State = 1) {
		ControlSend,,{RControl up},[#] War   [#]
	}
	Return