function graphFilterI4(n, yfir, N, text)
    stemGraph(n, yfir, strcat('Filtro FIR (', text, ')'), 'n', 'y[n]');
    xlim([-10000, (N - 35301)]);
end