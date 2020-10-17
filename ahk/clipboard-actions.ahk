;^!C::
;{
;StringReplace, Clipboard, Clipboard,\\,\, All
;StringReplace, Clipboard, Clipboard,\,/, All
;return
;}

;^!V::
;{
;    RegExMatch(clipboard,"(\d+)$",Number)
;
;    NewNumber:=Number+1
;
;    If NewNumber < 10
;	    NewNumber:="0" NewNumber
;
;    Clipboard:=RegExReplace(Clipboard,Number "$", NewNumber)
;    Send %Clipboard%
;
;Return
;}

#^E::
    Run, explorer %Clipboard%

Return


