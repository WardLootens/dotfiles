#!End::Send     {Media_Play_Pause}
#!Left::Send    {Media_Prev}
#!Right::Send   {Media_Next}
#!Down::Send    {Volume_Down 1}
#!Up::Send      {Volume_Up 1}

^!F10::
{
WinGetTitle, now_playing, ahk_class SpotifyMainWindow

#Persistent
TrayTip, Spotify, %now_playing%.
SetTimer, RemoveTrayTip, 3000
return

RemoveTrayTip:
SetTimer, RemoveTrayTip, Off
TrayTip
return

}


