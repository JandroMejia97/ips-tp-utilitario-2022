function y = system3(x, N)
    y = zeros(size(x));
    y(1) = 0.25 * x(1);
    for n = 2:N
        y(n) = 0.25 * (x(n) + x(n-1)) + 0.5 * y(n-1);
    end
end