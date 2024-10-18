let max_nat a b = 
if a < 0  || b < 0 then 
    failwith("I valori passati devono essere dei numeri naturali (maggiori o uguali a zero)") 
else if (a > b) then
    a
else
    b;;