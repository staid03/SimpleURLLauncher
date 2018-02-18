#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance , force

;Script for launching a URL with a custom bit of code in the middle

;Version	Date		Author		Notes
;	0.1		18-FEB-2018	Staid03		Initial

browser = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

URL_part1 = http:\\www.myurl.com\
URL_part2 = \part2.html

gui , color, E30613
gui , font , s14
gui , add , text ,, ---------------Enter custom text ------------
gui , add , edit , vCustomText
gui , add , button , , Run URL
gui , show , , URL Launcher
return 

buttonRunURL:
{
	gui , submit , nohide
	URL = %URL_part1%%CustomText%%URL_part2%
	msgbox , 1 ,, URL is %URL%`nClick OK to launch
	ifmsgbox , OK
	{
		run , %browser% %URL%
	}
}
return

