(* Chapter 1 - Guided Tour *)

(* --------------simple numerical calculation----------------- *)
3 + 4;;
8 / 3;;
3.5 +. 6.;;
30_000_000 / 300_000;;
3 * 5 > 14;;

(* --------------create variable----------------------------- *)

let x = 3 + 4;;
let y = x + x;;

(* --------------create function----------------------------- *)

let square x = x *x ;;
square 2;; (*evatuates square(2) = 4 *)

square (square 2);;

let ratio x y =
        Float.of_int x /. Float.of_int y;;

ratio 4 7;; (* ratio(4,7) = 4./7. = 0.5714 *)

let ratio_2 x y =
        let open Float.O in
        of_int x / of_int y;; (* ratio function variation *)

let ratio_3 x y = 
        Float.O.(of_int x / of_int y);; (* ratio function variation *)

(* ------ *)

let sum_if_true test_function first second =
        (if teste_function first then first else 0) +
        (if teste_function second then second else 0);;

let even x =
        x % 2 =0;;

sum_if_true even 3 4;;
sum_if_true even 2 4;;

(* annotated version *)
let sum_if_true (test_function: int -> bool) (x:int) (y:int) : int =
        (if test_function x then x else 0) +
        (if test_function y then y else 0);;

(* sometimes isn't enough information to fully determine the concrete type of a given value *)

let first_if_true teste_f x y =
        if test_f then x else y;;

let long_string s = String.length s > 6;;
let big_number x = x > 3;;

first_if_true long_string "short" "loooooong";;
first_if_true big_number 4 3;;

(* -----------------TUPLES, LISTS, OPTIONS AND PATTERN MATCHING----------------------- *)

(* Tuples: ordered collection of values that can each be of a different type. Fixed size. *)

let a_tuple = (3,"three");;
let another_tuple = (3, "four", 5.);;

let (x,y) = a_tuple;;

x + String.length y;;


let distance (x1,x2) (y1,y2) = 
        Float.sqrt ((x1 -. y1) **. 2. +. (x2 -. y2) **. 2.);;


(* Lists: let you hold any number of items of the same type. *)

let languages = ["OCaml";"Perl";"C"];;

(* ------------------List Module------------------------ *)

List.length languages;;

List.map languages ~f:String.length;;
List.map ~f:String.length languages;; (* using ~f allows to change the position of the arguments *)
List.map languages String.length;; (* position matters *)
(* wrong: List.map String.length languages;; *)

"Python"::"C++"::languages (* creates new extended list, preserving the original one *)















