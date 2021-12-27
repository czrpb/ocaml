open Base

let is_equilateral x y z =
  x <> 0 && x = y && y = z

let is_isosceles x y z =
  x <> 0 && y <> 0 && z <> 0 &&
  (x = y || x = z || y = z) &&
  (x+y >= z && x+z >= y && y+z >= x)

let is_scalene x y z =
  x <> 0 && y <> 0 && z <> 0 &&
  (x <> y && x <> z && y <> z) &&
  (x+y >= z && x+z >= y && y+z >= x)
