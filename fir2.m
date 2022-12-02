function y = fir2(x, N)
    y = zeros(size(x));
    for n = 35500:N
        y(n) = x(n) + 0.5 * x(n-8820) - 0.125 * x(n-26460);
    end
end