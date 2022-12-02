function graphSX(n, h, s, H, numSystem = 1, point = 2, exc = 1)
    strNumSystem = num2str(numSystem);
    strPoint = num2str(point);
    strExc = num2str(exc);
    % Plot the system 1
    figure = figure;
    set(figure, 'Name', cstrcat('Inciso ', strPoint, ' - Sistema ', strNumSystem), 'NumberTitle', 'off');

    subplot(2,1,1)
    stemGraph(n, h, cstrcat('Respuesta impulsional a S', strNumSystem), 'n', strcat('h', strNumSystem,'[n]'));

    % Plot the TFTD of the system 1
    subplot(2,2,3)
    plotGraph(s, abs(H), 'Respuesta en Frecuencia - Módulo', 's',  strcat('|H', strNumSystem,'(s)|'));

    % Plot the phase of the TFTD of the system 1
    subplot(2,2,4)
    plotGraph(s, angle(H), 'Respuesta en Frecuencia - Fase', 's', strcat('arg(H', strNumSystem,'(s))'));

    % Save the figure
    print(figure, '-dpng', strcat('0', strExc, '_inciso_', strPoint, '_sistema', strNumSystem));
end