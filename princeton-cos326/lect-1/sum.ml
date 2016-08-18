(* sum the numbers from 0 to n
   precondition: n must be a natural number
*)

let rec sumTo(n:int) : int = 
    match n with
    0 -> 0 
    | 1 -> n + sumTo(n-1)
;;

print_int(sumTo 4);;
print_newline();;
