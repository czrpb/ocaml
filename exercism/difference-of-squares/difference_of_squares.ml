open Base

let square_of_sum n =
  let rec sos n acc =
    match n, acc with
    | 0, acc -> acc*acc
    | n, acc -> sos (n-1) (n+acc)
  in
    sos n 0


let sum_of_squares n =
  let rec sos n acc =
    match n, acc with
    | 0, acc -> acc
    | n, acc -> sos (n-1) (acc+n*n)
  in
    sos n 0

let difference_of_squares n =
  square_of_sum n - sum_of_squares n
