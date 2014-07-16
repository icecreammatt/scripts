(*

  Example:
    - First parameter is the phone number to call)
    - Second parameter (optional) is the extension. Use a comma to "," pause before the numbers get entered

  osascript SkypeCall.scpt +15555555555 ,555555#
  
*)

on run argv

  # Get the phone number
  set num to item 1 of argv

  # get the extension
  if(count of argv) > 1 then
    set ext to item 2 of argv
  else
    set ext to ""
  end if

  set phoneNumber to "+18773112008"
  set ext to ",988792#"

  tell application "Skype"
    set active_call to send command "CALL " & phoneNumber script name ""
    set skype_call_id to word 2 of active_call
    delay 10
    set bridge to "ALTER CALL " & skype_call_id & " DTMF "
    repeat with tone in the characters of ext
      if tone contains "," then
        delay 2
      else
        send command bridge & " " & tone script name "s2"
        delay 0.2
      end if
    end repeat
  end tell

end run
