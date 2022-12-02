function y = diffCanal(x,N)
    y = zeros(size(x));
    for n = 30000:N
        y(n) = x(n) + 0.5 * x(n-8820) + 0.25 * x(n-17640);
    end
end

