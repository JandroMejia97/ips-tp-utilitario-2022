function graphAudioI5(yfir, fs, firText)
    sound(yfir, fs);
    plot(yfir);
    ylim([-1.5 1.5]);
    title(strcat('Señal de audio (', firText,')'));
    xlabel('t');
    ylabel('y(t)');
end