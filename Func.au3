#cs

Functions for Sakura by Lilian Boinard

#ce

#include-once
#include <AutoItConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <File.au3>

Func systemInfo()

   Run("C:\WINDOWS\system32\cmd.exe")

   Sleep(1000)

   $hCmd = WinGetHandle("C:\WINDOWS\system32\cmd.exe")

   ControlSend($hCmd, "", "", "@Echo Off{ENTER}" & @CR)

   ControlSend($hCmd, "", "", "Color FD" & @CR )

   ControlSend($hCmd, "", "", "Cls" & @CR )

   ControlSend($hCmd, "", "", ":: --------------SAKURA--------------" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: User Name: " & @UserName & @CR)

   ControlSend($hCmd, "", "", ":: Computer Name: " & @ComputerName & @CR)

   ControlSend($hCmd, "", "", ":: Processor Arch: " & @ProcessorArch & @CR)

   ControlSend($hCmd, "", "", ":: CPU Arch: " & @CPUArch & @CR)

   ControlSend($hCmd, "", "", ":: OS Arch: " & @OSArch & @CR)

   ControlSend($hCmd, "", "", ":: OS Version: " & @OSVersion & @CR)

   ControlSend($hCmd, "", "", ":: OS Lang: " & @OSLang & @CR)

   ControlSend($hCmd, "", "", ":: IP Adresse1: " & @IPAddress1 & @CR)

   ControlSend($hCmd, "", "", ":: Refresh rate (hertz): " & @DesktopRefresh & @CR)


EndFunc

Func sakuraInfo()

   Run("C:\WINDOWS\system32\cmd.exe")

   Sleep(1000)

   $hCmd = WinGetHandle("C:\WINDOWS\system32\cmd.exe")

   ControlSend($hCmd, "", "", "@Echo Off{ENTER}" & @CR)

   ControlSend($hCmd, "", "", "Color FD" & @CR )

   ControlSend($hCmd, "", "", "Cls" & @CR )

   ControlSend($hCmd, "", "", ":: --------------SAKURA--------------" & @CR & @CR & @CR)

   ControlSend($hCmd, "", "", ":: Welcome to Sakura <3" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: Created by Pyro" & @CR)

   ControlSend($hCmd, "", "", ":: All modification of this software is allowed." & @CR & @CR)

   ControlSend($hCmd, "", "", ":: Discord: Pyro0239" & @CR)


EndFunc

Func batMessage()

   $Message = InputBox("Sakura", "                       Enter the message")

   _FileCreate(@DesktopDir & "\OpenMe.cmd")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "@Echo Off")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "Color FD")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "Cls")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "Echo " & $Message)

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "Echo.")

   FileWriteLine(@DesktopDir & "\OpenMe.cmd", "Pause")

EndFunc

Func boxMessage()

   $Message = InputBox("Sakura", "                       Enter the message")

   _FileCreate(@DesktopDir & "\OpenMe.vbs")

   FileWriteLine(@DesktopDir & "\OpenMe.vbs", "MsgBox """ & $Message & """")

EndFunc

Func pcBlock()

FileCopy("App\Block.exe", @DesktopDir, 1)

FileCopy("App\Blocked.bmp", @DesktopDir, 1)

Run(@DesktopDir & "\Block.exe")

Exit

EndFunc

Func help()

   Run("C:\WINDOWS\system32\cmd.exe")

   Sleep(1000)

   $hCmd = WinGetHandle("C:\WINDOWS\system32\cmd.exe")

   ControlSend($hCmd, "", "", "@Echo Off{ENTER}" & @CR)

   ControlSend($hCmd, "", "", "Color FD" & @CR )

   ControlSend($hCmd, "", "", "Cls" & @CR )

   ControlSend($hCmd, "", "", ":: --------------SAKURA--------------" & @CR & @CR & @CR)

   ControlSend($hCmd, "", "", ":: List of commands ::" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: ""Sakura"" = Sakura information" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: ""SytemInfo"" = PC information" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: ""BatMessage = leave a message on cmd""" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: ""BoxMessage = leave a message on a box""" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: ""PcBlock"" = Block the PC until extinction" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: ""Exit"" = Exit the app" & @CR & @CR)

   ControlSend($hCmd, "", "", ":: ""Help"" = List of commands of Sakura" & @CR & @CR)

EndFunc

Func searchCmd()

   $Read = GUICtrlRead($Input1)

   GUICtrlSetData($Input1, "")

   Switch $Read

   Case "Exit"

	  GUICtrlSetData($Label1, "BYEBYE")

	  Exit

   Case "SystemInfo"

	  Call("Systeminfo")

   Case "Sakura"

	  Call("sakuraInfo")

   Case "BatMessage"

	  Call("batMessage")

   Case "PcBlock"

	  $confirmBlock = MsgBox(1, "Sakura", "Are you sure ?")

	  If $confirmBlock = 1 Then

		 Call("pcBlock")

	  Else


	  EndIf

   Case "help"

	  Call("help")

   Case "BoxMessage"

	  Call("boxMessage")

   EndSwitch

EndFunc

HotKeySet("{ENTER}", "enterPressed")

Func enterPressed()

   Call("searchCmd")

EndFunc
