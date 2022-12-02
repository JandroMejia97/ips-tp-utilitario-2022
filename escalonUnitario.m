## Copyright (C) 2022 Alejandro Mejía

## -*- texinfo -*- 
## This function is used to get a value of the unit impulse centered on the "m" value.
## @deftypefn {@var{d} =} deltaKronecker (@var{n}, @var{m=0})
##
## @end deftypefn
function u = escalonUnitario(n, m = 0)
  u = (n >= m);
end