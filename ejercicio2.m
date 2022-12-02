% studentNumber = input('INGREZA TU NÚMERO DE LEGAJO: ');
studentNumber = 24020;

% Check if the number is valid
if studentNumber < 1 || studentNumber > 99999
    disp('Número de legajo inválido');
    return;
else
    ################################################################
    % INCISO 1
    ################################################################
    [n, y1] = hcanald(studentNumber);

    disp('*********** EJECUTANDO EL INCISO 1 ***********');
    % Plot the signal
    figure1 = figure;
    set(figure1, 'Name', 'Inciso 1', 'NumberTitle', 'off');

    stemGraph(n, y1, cstrcat('Señal generada con: ', num2str(studentNumber)), 'n', 'y1[n]');

    % Catching values major than zero.
    disp('DELTAS DE DIRAC');
    for i = 1:size(n, 2)
        if y1(i) > 0
            disp(cstrcat('y1[', num2str(n(i)), '] = ', num2str(y1(i))));
        end
    end

    % Save the figure
    print figure1 -dpng '02_inciso_1'

    ################################################################
    % INCISO 2
    ################################################################
    disp('*********** EJECUTANDO EL INCISO 2 ***********');
    % Plot the signal
    elements = 100000;
    n = [-35300:elements - 35300];
    delta = deltaKronecker(n);
    y2 = diffCanal(delta, elements);

    figure2 = figure;
    set(figure2, 'Name', 'Inciso 2', 'NumberTitle', 'off');

    stemGraph(n, y2, 'Ecuación en diferencias', 'n', 'y2[n]');
    xlim([0 35300]);
    % Save the figure
    print figure2 -dpng '02_inciso_2'

    ################################################################
    % INCISO 3
    ################################################################

    disp('*********** EJECUTANDO EL INCISO 3 ***********');
    [x, fs] = audioread('audio.wav');

    figure3 = figure;
    set(figure3, 'Name', 'Audio', 'NumberTitle', 'off');

    % Plot the signal
    plot(x);
    ylim([-1.5 1.5]);
    title('Señal de audio');
    xlabel('t');
    ylabel('x(t)');

    % Play sound
    % sound(x, fs);

    % Save the figure
    print figure3 -dpng '02_audio_3'

    y3 = diffCanal(x, size(x));
    figure4 = figure;
    set(figure4, 'Name', 'Inciso 3', 'NumberTitle', 'off');

    % Plot the signal
    plot(y3);
    title('Señal de audio con canal');
    xlabel('x(t)');
    ylabel('y3(x)');

    % Play sound
    % sound(y3, fs);

    % Save the figure
    print figure4 -dpng '02_inciso_3'

    ################################################################
    % INCISO 4
    ################################################################
    disp('*********** EJECUTANDO EL INCISO 4 ***********');

    figure4 = figure;
    set(figure4, 'Name', 'Inciso 4', 'NumberTitle', 'off');

    % Plot the signal
    subplot(4, 1, 1);
    y4 = diffCanal(delta, elements);
    stemGraph(n, y2, 'hCanalD', 'n', 'h[n]');
    xlim([-10000, (elements - 35500)]);

    subplot(4, 1, 2);
    yf1 = fir1(y4, elements);
    graphFilterI4(n, yf1, elements, '1 rama');
    
    subplot(4, 1, 3);
    yf2 = fir2(y4, elements);
    graphFilterI4(n, yf2, elements, '2 ramas');

    subplot(4, 1, 4);
    yf3 = fir3(y4, elements);
    graphFilterI4(n, yf3, elements, '3 ramas');

    % Save the figure
    print figure4 -dpng '02_inciso_4'

    ################################################################
    % INCISO 5
    ################################################################
    disp('*********** EJECUTANDO EL INCISO 5 ***********');

    figure5 = figure;
    set(figure5, 'Name', 'Inciso 5', 'NumberTitle', 'off');

    % Plot the signal
    subplot(4, 1, 1);
    ya5 = diffCanal(x, size(x, 1));
    graphAudioI5(ya5, fs, 'Canal');

    subplot(4, 1, 2);
    yfa1 = fir1(ya5, size(x, 1));
    graphAudioI5(yfa1, fs, 'Filtro FIR 1 rama');

    subplot(4, 1, 3);
    yfa2 = fir2(ya5, size(x, 1));
    graphAudioI5(yfa2, fs, 'Filtro FIR 2 ramas');

    subplot(4, 1, 4);
    yfa3 = fir3(ya5, size(x, 1));
    graphAudioI5(yfa3, fs, 'Filtro FIR 3 ramas');

    % Save the figure
    print figure5 -dpng '02_inciso_5'
end