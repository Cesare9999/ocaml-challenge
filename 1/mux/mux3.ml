(* Definizione del multiplexer 2-a-1 *)
let mux2 (s0: bool) (a: bool) (b: bool) = if s0 then b else a;;

(* Definizione del multiplexer 4-a-1 utilizzando mux2 *)
let mux4 (s1: bool) (s0: bool) (a0: bool) (a1: bool) (a2: bool) (a3: bool) =
  (* Selezioniamo tra a0 e a1 in base a s0 *)
  let upper = mux2 s0 a0 a1 in
  (* Selezioniamo tra a2 e a3 in base a s0 *)
  let lower = mux2 s0 a2 a3 in
  (* Selezioniamo tra upper e lower in base a s1 *)
  mux2 s1 upper lower;;

(* Test *)
let () =
  assert (mux4 false false false true false true = false);
  assert (mux4 false true false true false true = true);
  assert (mux4 true false false true false true = false);
  assert (mux4 true true false true false true = true);
  print_endline "Tutti i test sono passati."
