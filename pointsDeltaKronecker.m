## -*- texinfo -*- 
## This function is used to get a pair of points from a discrete delta centered in a "m" value.
## @deftypefn {[@var{n}, @var{y}] =} pointsDeltaKronecker (@var{m=0}, @var{nMin=-10}, @var{nMax=10})
##
## @end deftypefn
function [n, y] = pointsDeltaKronecker(m=0, nMin=-10, nMax=10)
    if (nMin > nMax)
        error("nMin must be less than nMan");
    end
    n = [nMin : nMax];
    y = deltaKronecker(n, m);
end