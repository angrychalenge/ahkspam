;Made by angrychalenge in the span of 2 days, made just to troll my friends >:)
;v0.6
Suspend On
MsgBox, 64, Credits, Made by angrychalenge
MsgBox, 36, Copy Paste?, Do you want to use copy and paste? (can be useful on bigger text, but if text is too big performance can lower, USE WITH CAUTION)
IfMsgBox Yes
  cpaste = 1
else
  cpaste = 0
MsgBox, 64, How does this work?, Once you choose what to spam, pressing space will spam that text repeatedly. Once space is let go, the program will stop. If you want to stop without pressing space, press esc.
MsgBox, 48, URGENT, IF THE PROGRAM DOESNT STOP WHEN YOU LET GO OF SPACE, DO NOT PANIC. IF YOU HAVE INPUTED A LARGE AMOUNT OF TEXT AND IT'S NOT SET TO COPY PASTE MODE YOU WILL HAVE TO WAIT FOR THE TEXT TO BE WRITTEN ONE LAST TIME.
InputBox, spamtext, Spam Text, What text should be spammed?
Suspend Off
$Space::
  if (cpaste = 0)
  {
    While GetKeyState("Space","P")
    {
      Send, %spamtext%
      Sleep 1
      Send, {Enter}
      Sleep 1
    }
  }
  else
  {
    clipboard := ""
    clipboard := spamtext
    While GetKeyState("Space","P")
    {
      Send, ^v
      Sleep 1
      Send, {Enter}
      Sleep 1
    }
  }

Esc::
  Suspend, Permit
  MsgBox, 48, Exiting, The program will now be exited.
  ExitApp
Return