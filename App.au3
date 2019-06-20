#cs

███████╗ █████╗ ██╗  ██╗██╗   ██╗██████╗  █████╗
██╔════╝██╔══██╗██║ ██╔╝██║   ██║██╔══██╗██╔══██╗
███████╗███████║█████╔╝ ██║   ██║██████╔╝███████║
╚════██║██╔══██║██╔═██╗ ██║   ██║██╔══██╗██╔══██║
███████║██║  ██║██║  ██╗╚██████╔╝██║  ██║██║  ██║
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝


Author: Lilian Boinard

#ce

#include "Func.au3"
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Break($BREAK_DISABLE)

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Sakura", 345, 233, 332, 251)
GUISetBkColor(0x000000)
$Graphic1 = GUICtrlCreateGraphic(0, 176, 344, 56)
GUICtrlSetColor(-1, 0xFF80C0)
$Graphic2 = GUICtrlCreateGraphic(88, 8, 184, 48)
GUICtrlSetColor(-1, 0xFF80C0)
$Label1 = GUICtrlCreateLabel("S4KUR4", 136, 16, 100, 32)
GUICtrlSetFont(-1, 18, 400, 0, "Pixel Digivolve")
GUICtrlSetColor(-1, 0xFF80C0)
$Input1 = GUICtrlCreateInput("", 80, 120, 201, 21)
GUICtrlSetColor(-1, 0xFF80C0)
GUICtrlSetBkColor(-1, 0x070707)
GUICtrlSetCursor (-1, 2)
$Edit1 = GUICtrlCreateEdit("", 8, 184, 329, 41, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_WANTRETURN))
GUICtrlSetData(-1, StringFormat("By Pyro#0239                            \r\n                         Modification of this software is allowed"))
GUICtrlSetBkColor(-1, 0xFFFFFF)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			MsgBox(64, "Sakura", "Enter ""exit"" command for exit")


	EndSwitch
WEnd
