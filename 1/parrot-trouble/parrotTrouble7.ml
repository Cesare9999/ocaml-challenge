let parrot_trouble (talking:bool) (time:int) = 
if time < 0 || time > 23 then
  None
else if talking && (time < 7 || time > 20) then
  Some true
else
  Some false
;;