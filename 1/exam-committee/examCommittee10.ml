type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;

let decide_exam v1 v2 v3 =
  (* Conta il numero dei voti positivi e verifica per StrongReject*)
  let accept_count = 
    (if v1 = WeakAccept || v1 = StrongAccept then 1 else 0) +
    (if v2 = WeakAccept || v2 = StrongAccept then 1 else 0) +
    (if v3 = WeakAccept || v3 = StrongAccept then 1 else 0) in
  let has_strong_reject = (v1 = StrongReject || v2 = StrongReject || v3 = StrongReject) in
  if accept_count >= 2 && not has_strong_reject then
    true  (* Passato *)
  else
    false (* Non passato *)