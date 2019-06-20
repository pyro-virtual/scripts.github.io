#Region #includes#
#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#EndRegion #includes#

#Region #Parameters"
#NoTrayIcon
Break($BREAK_DISABLE)
Opt("TrayIconHide", 1)
#EndRegion #Parameters"

#Region #GUI#
$ThisPcIsBlocked = GUICreate("ThisPcIsBlocked", 237, 1, 4, 43)
GUISetState(@SW_SHOW)
#EndRegion #GUI#

SplashImageOn("st", @DesktopDir & "\Blocked.bmp", @DesktopWidth, @DesktopHeight, -1, -1, $DLG_NOTITLE)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			MsgBox(64, "Sakura", "Oui... mais non.")

	EndSwitch
WEnd
