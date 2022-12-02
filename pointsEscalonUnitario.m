## -*- texinfo -*- 
## This function is used to get a pair of points from a unit impulse centered in a "m" value.
## @deftypefn {[@var{n}, @var{y}] =} pointsEscalonUnitario (@var{m=0}, @var{nMin=-10}, @var{nMax=10})
##
## @end deftypefn
function [n, y] = pointsEscalonUnitario(m=0, nMin=-10,nMax=10)
    if (nMin > nMax)
        error("nMin must be less than nMax");
    end
    n = [nMin : nMax];
    y = escalonUnitario(n, m);
end