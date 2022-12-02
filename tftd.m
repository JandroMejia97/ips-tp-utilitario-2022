## Copyright (C) 2022 Alejandro Mejía

## -*- texinfo -*- 
## This function is used to get the TFTD of a given signal.
## @deftypefn {[@var{n}, @var{y}] =} tftd (@var{x}, @var{n}, @var{ds=0.001}, @var{sMin=-2}, @var{sMax=2})
##
## @end deftypefn
function [s, X] = tftd(x, n, ds = 0.001, sMin = -2, sMax = 2)
    s = sMin:ds:sMax;
    X = zeros(size(s));
    for k = 1:length(s)
        X(k) = sum(x.*exp(-i * 2 * pi * s(k) * n));
    end
end