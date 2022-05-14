#include <ImageSearch.au3>
HotKeySet ("{f1}", "exitapp")
#include <Misc.au3>
$dll = DllOpen("user32.dll")

$x1=0
$y1=0
$x =1019
$y =739
$x2 = 4
$y2 = 4
MouseMove ($x1,$y1,10)


repeat()
Func repeat()
While(1)
	sleep(35)
  WinActivate("[CLASS:RCLIENT]")
	 sleep(34)

 If WinActive("[CLASS:RCLIENT]") Then
	 mainclient()
	 sleep(33)
 ElseIf WinExists("[CLASS:RiotWindowClass]") Then
	 ingame()
sleep(32)




 EndIf

WEnd
EndFunc



mainclient()
func mainclient()
while(1)
	sleep(50)
	WinActivate("[CLASS:RCLIENT]")
	$search66 = _ImageSearch ("accept5.bmp", 1, $x1, $y1, 0)
    If $search66 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(10)
		    MouseClick("left")
			sleep(70)
	EndIf
$search = _ImageSearch ("play.bmp", 1, $x1, $y1, 0)
	if $search = 1 Then
			MouseMove ($x1,$y1,5)
	        sleep(2000)
		    MouseClick("left")
			sleep(100)
	EndIf
	sleep(100)
$search1 = _ImageSearch ("coop.bmp", 1, $x1, $y1, 0)
	If $search1 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(300)
		    MouseClick("left")
			sleep(2000)
	EndIf
$search2 = _ImageSearch ("intro.bmp", 1, $x1, $y1, 0)
	if $search2 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(300)
		    MouseClick("left")
			sleep(300)
	EndIf
$search5 = _ImageSearch ("find.bmp", 1, $x1, $y1, 0)
    If $search5 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(100)
		    MouseClick("left")
			sleep(300)
	EndIf
$search6 = _ImageSearch ("accept5.bmp", 1, $x1, $y1, 0)
    If $search6 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(10)
		    MouseClick("left")
			sleep(70)
	EndIf
	$search4 = _ImageSearch ("confirm.bmp", 1, $x1, $y1, 0)
	If $search4 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(100)
		    MouseClick("left")
			sleep(300)
	EndIf
$search7 = _ImageSearch ("ashe.bmp", 1, $x1, $y1, 90)
    If $search7 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(100)
		    MouseClick("left")
			sleep(300)
	EndIf
	$search8 = _ImageSearch ("lockin.bmp", 1, $x1, $y1, 90)
    If $search8 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(100)
		    MouseClick("left")
			sleep(300)
	EndIf
$search9 = _ImageSearch ("playagain.bmp", 1, $x1, $y1, 90)
    If $search9 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(100)
		    MouseClick("left")
			sleep(300)
	EndIf
	$search10 = _ImageSearch ("skip.bmp", 1, $x1, $y1, 90)
    If $search10 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(100)
		    MouseClick("left")
			sleep(300)
	EndIf
	$search12 = _ImageSearch ("ok.bmp", 1, $x1, $y1, 90)
    If $search12 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(60)
		    MouseClick("left")
			sleep(90)
	EndIf
	$search13 = _ImageSearch ("difficulty2.bmp", 1, $x1, $y1, 90)
    If $search13 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(500)
	EndIf
	$search14 = _ImageSearch ("select.bmp", 1, $x1, $y1, 90)
    If $search14 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(60)
		    MouseClick("left")
			sleep(90)
	EndIf
	$search15 = _ImageSearch ("MF.png", 1, $x1, $y1, 90)
    If $search15 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(60)
		    MouseClick("left")
			sleep(90)
	EndIf
	$search11 = _ImageSearch ("x2.bmp", 1, $x1, $y1, 90)
    If $search11 = 1 Then
		    MouseMove ($x1,$y1,5)
		    sleep(100)
		    MouseClick("left")
			sleep(300)
	EndIf
repeat()
WEnd

EndFunc


Func exitapp()
	Exit
	EndFunc

Func ingame()
While 1
	If _IsPressed("23", $dll) Then

        Exit
    EndIf
	WinActivate("[CLASS:RiotWindowClass]")

Sleep(Random(10, 17, 1))
$image1 = _ImageSearch("allycreephealth.png", 1,$x1,$y1,3)
If $image1 = 1 then
	MouseMove($x1,$y1,5)
	Send("a")
	Sleep(Random(11, 25, 1))
	send("q")
	Sleep(Random(11, 25, 1))
	 send("r")
	Sleep(Random(11, 25, 1))
EndIf
$image1 = _ImageSearch("allycreephealth.png", 1,$x1,$y1,3)
If $image1 <> 1 Then
	mousemove(Random($x-$x2, $x+ $x2), Random ($y- $y2, $y+$y2 ))
	MouseClick("right")
	Sleep(Random(2000, 2500, 1))

EndIf
$redimage = _ImageSearch("red.bmp", 1,$x1,$y1,41)
If $redimage = 1 Then
	mousemove(Random($x-$x2, $x+ $x2), Random ($y- $y2, $y+$y2 ))
	MouseClick("right")
	Sleep(Random(2000, 2500, 1))
EndIf
$image2 = _ImageSearchArea("LowHp.bmp", 1, 553, 780, 565, 790, $x1, $y1, 0)
If $image2 = 1 Then
	mousemove(Random($x-$x2, $x+ $x2), Random ($y- $y2, $y+$y2 ))
	Sleep(Random(100, 150, 1))
		 MouseClick("right")
		 send("d")
		 Sleep(Random(7000, 8000, 1))
		 send("b")
		 Sleep(Random(10000, 11000, 1))
		 send("f")
		 Sleep(Random(400, 500, 1))
		 Send("^r")
		 Sleep(Random(400, 500, 1))
         Send("^q")
		 Sleep(Random(400, 500, 1))
         Send("^e")
		 Sleep(Random(400, 500, 1))
         Send("^w")
EndIf


repeat()
WEnd

EndFunc

