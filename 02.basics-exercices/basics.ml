let print_exercise n s = Printf.printf "\nExercise %x: %s \n%!" n s in

(* 1. 
   What is the type and value of each of the following OCaml expressions? *)
print_exercise 1 "Value";

(* Int *)
7*(1+2+3) |> print_int; print_string "\n";

(* String *)
"CS " ^ string_of_int 3110 |> print_string; print_string "\n";

(* 2.
Write an expression that multiplies 42 by 10.

Write an expression that divides 3.14 by 2.0. Hint: integer and floating-point 
operators are written differently in OCaml.

Write an expression that computes 4.2 raised to the seventh power. Note: there 
is no built-in integer exponentiation operator in OCaml (nor is there in C, by 
the way), in part because it is not an operation provided by most CPUs.   
*)
print_exercise 2 "Operators";

42 * 10 |> print_int; 
  print_string "\n";

3.14 /. 2.0 |> print_float; 
  print_string "\n";

let rec pow x e = if e = 0 then 1.0 else x *. pow x (e - 1) in
  pow 4.2 7 |> print_float; 
  print_string "\n";

4.2 ** 7.0 |> print_float; 
  print_string "\n";

(*
Write an expression that compares 42 to 42 using structural equality.

Write an expression that compares "hi" to "hi" using structural equality. What is the result?

Write an expression that compares "hi" to "hi" using physical equality. What is the result?   
*)

print_exercise 3 "Equality";

42 = 42 |> Printf.printf "%B"; print_string "\n";

"hi" = "hi" |> Printf.printf "%B"; print_string "\n";

"hi" == "hi" |> Printf.printf "%B"; (* Should be false?*)
print_string "\n"; 
