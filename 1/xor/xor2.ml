let xor a b = (not(a) || not(b)) && (a || b);;

let xor2 a b = if a then (if b then false else true) else (if b then true else false);;

let xor3 a b =
  match (a, b) with
   | (false, false) -> false
   | (false, true) -> true
   | (true, false) -> true
   | (true, true) -> false
  ;;