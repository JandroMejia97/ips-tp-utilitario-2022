function y = fir3(x, N)
    y = zeros(size(x));
    for n = 35301:N
        y(n) = x(n) - 0.5 * x(n-8820) + 0.125 * x(n - (8820 * 3)) - 0.0625 * x(n - (8820 * 4));
    end
end