## Copyright (C) 2022 Alejandro Mejía

## -*- texinfo -*- 
## This function is used to get a value of the Kronecker's delta centered on the "m" value.
## @deftypefn {@var{d} =} deltaKronecker (@var{n}, @var{m=0})
##
## @end deftypefn
function d = deltaKronecker(n, m=0)
    d = (n == m);
end