(* given two points (x1, y1) and (x2, y2) compute the distance between them.
 * 
 * Steps to writing functions over typed data:
         * Write down the function and argument names
         * Write down argument and result types
         * Write down some examples (in a comment)
         * Deconstruct input data structures
            * the argument types may suggest how to do it
         * Build new output values
            * the result type may suggest how you do it
         * Clean up by identifying repeated patterns
            * define and reuse helper functions
            * your code should be elegant and easy to read
 *)
type point = float * float;;

let distance (p1: point) (p2: point) : float = 
    let square x = x *. x in 
    let (x1, y1) = p1 in
    let (x2, y2) = p2 in
    sqrt(square (x1 -. x2) +. square (y1 -. y2))
;;

(* testing *)
let pt1 = (1.0,2.0);;
let pt2 = (3.0,4.0);;
let distl = distance pt1 pt2;;

print_float distl
