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
    [n, y] = senial(studentNumber);

    disp('*********** EJECUTANDO EL INCISO 1 ***********');
    % Plot the signal
    figure1 = figure;
    set(figure1, 'Name', 'Inciso 1', 'NumberTitle', 'off');

    subplot(2,1,1)
    stemGraph(n, y, cstrcat('Señal generada con: ', num2str(studentNumber)));

    % Plot the TFTD
    subplot(2,2,3)
    [s, X] = tftd(y, n);
    plotGraph(s, abs(X), 'Módulo de la TFTD', 's', '|X(s)|');

    % Plot the phase of the TFTD
    subplot(2,2,4)
    plotGraph(s, angle(X), 'Fase de la TFTD', 's', 'arg(X(s))');
    xlim([-0.5, 0.5]);

    % Save the figure
    print figure1 -dpng '01_inciso_1'

    ################################################################
    % INCISO 2
    ################################################################
    disp('*********** EJECUTANDO EL INCISO 2 ***********');
    elements = 10;
    n = -elements:elements;
    delta0 = deltaKronecker(n);
    delta1 = deltaKronecker(n, 1);
    u = escalonUnitario(n);
    u1 = escalonUnitario(n, 1);

    disp('*********** ANALIZANDO EL SISTEMA 1 **********');
    % System 1 - Analytical solution
    h = 0.5 * (delta0 + delta1);

    % Get the TFTD of the system 1
    H = 0.5 * (1 + exp(-2i * pi * s));

    graphSX(n, h, s, H);

    disp('*********** ANALIZANDO EL SISTEMA 2 **********');
    % System 2 - Analytical solution
    h = 0.5 * (delta0 - delta1);

    % Get the TFTD of the system 2
    H = 0.5 * (1 - exp(-2i * pi * s));

    graphSX(n, h, s, H, 2);

    disp('*********** ANALIZANDO EL SISTEMA 3 **********');
    % System 3 - Analytical solution
    h = 0.25 .* ((0.5).^n .* u + (0.5).^(n - 1) .* u1);

    % Get the TFTD of the system 3
    H = (1 + exp(-2i * pi * s))./ (4 - (2 * exp(-2i * pi * s)));

    graphSX(n, h, s, H, 3);

    disp('*********** ANALIZANDO EL SISTEMA 4 **********');
    % System 4 - Analytical solution
    h = 0.25 .* ((-0.5).^n .* u - (-0.5).^(n - 1) .* u1);

    % Get the TFTD of the system 4
    H = (1 - exp(-2i * pi * s))./ (4 + (2 * exp(-2i * pi * s)));

    graphSX(n, h, s, H, 4);


    ################################################################
    % INCISO 3
    ################################################################
    disp('*********** EJECUTANDO EL INCISO 3 ***********');
    numElements = 2 * elements + 1;
    % System 1
    h = system1(delta0, numElements);
    [s, H] = tftd(h, n);

    graphSX(n, h, s, H, 1, 3);

    % System 2
    h = system2(delta0, numElements);
    [s, H] = tftd(h, n);

    graphSX(n, h, s, H, 2, 3);

    % System 3
    h = system3(delta0, numElements);
    [s, H] = tftd(h, n);

    graphSX(n, h, s, H, 3, 3);

    % System 4
    h = system4(delta0, numElements);
    [s, H] = tftd(h, n);

    graphSX(n, h, s, H, 4, 3);

    ################################################################
    % INCISO 4
    ################################################################
    disp('*********** EJECUTANDO EL INCISO 4 ***********');
    [n, y] = senial(studentNumber);
    
    figure1 = figure;
    set(figure1, 'Name', 'Inciso 4 - Sistema 1', 'NumberTitle', 'off');

    % System 1
    h1 = system1(y, size(y, 2));

    subplot(2,2,1);
    stemGraph(n, h1, 'Respuesta y[t] del sistema 1', 'n', 'h1[n]');

    % System 2
    h2 = system2(y, size(y, 2));

    subplot(2,2,2);
    stemGraph(n, h2, 'Respuesta y[t] del sistema 2', 'n', 'h2[n]');

    % System 3
    h3 = system3(y, size(y, 2));

    subplot(2,2,3);
    stemGraph(n, h3, 'Respuesta y[t] del sistema 3', 'n', 'h3[n]');

    % System 4
    h4 = system4(y, size(y, 2));

    subplot(2,2,4);
    stemGraph(n, h4, 'Respuesta y[t] del sistema 4', 'n', 'h4[n]');

    print figure1 -dpng '01_inciso_4_sistemas'



    ################################################################
    % INCISO 5
    ################################################################
    disp('*********** EJECUTANDO EL INCISO 5 ***********');

    [s, H1] = tftd(h1, n);
    graphSX(n, h1, s, H1, 1, 5);

    [s, H2] = tftd(h2, n);
    graphSX(n, h2, s, H2, 2, 5);

    [s, H3] = tftd(h3, n);
    graphSX(n, h3, s, H3, 3, 5);

    [s, H4] = tftd(h4, n);
    graphSX(n, h4, s, H4, 4, 5);

    close all


end


