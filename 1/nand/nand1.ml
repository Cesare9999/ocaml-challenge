let nand a b = not(a && b);;
(* val nand : bool -> bool -> bool = <fun> *)

let nand2 a b = if a then (if b then false else true) else true;;
(* val nand2 : bool -> bool -> bool = <fun> *)

let nand3 a b =
match (a, b) with
 | (false, false) -> true
 | (false, true) -> true
 | (true, false) -> true
 | (true, true) -> false
;;