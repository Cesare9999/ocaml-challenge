type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture (d:weekday) (c:course) = if c == ALF then (if d == Tu || d == Th || d == Fr then true else false) else 
  (if c == LIP then (if d == We || d == Th then true else false) else false);;

