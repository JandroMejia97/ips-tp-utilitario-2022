function y = fir1(x, N)
    y = zeros(size(x));
    for n = 35500:N
        y(n) = x(n) + 0.5 * x(n-8820);
    end
end