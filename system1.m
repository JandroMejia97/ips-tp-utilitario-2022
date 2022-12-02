function y = system1(x, N)
    y = zeros(size(x));
    y(1) = 0.5 * x(1);
    for n = 2:N
        y(n) = 0.5 * (x(n) + x(n-1));
    end
end