function [n, x] = senial(numal);
% AnSyS
% Año 2021
% Práctica con utilitario 1
% 
% [n, x] = senial(numal)
% Esta función retorna la señal del Ejercicio 1, y los instantes a los que
% corresponde.
% 
% Variables de entrada:
% numAl: Introduzca en este campo su número de alumno (sin barra).
% En caso de realizar el trabajo de a dos ingrese uno de los números.
% de alumno.
% 
% Variables de salida:
% n: Instantes n a los que corresponde la señal.
% x: Señal

n = [0:100];

switch(rem(numal,4));
    case(0)
        x = [...
                         0.2,   -0.199407872438878, ...
           0.201578617257383,   -0.194674357523696, ...
           0.206308238948418,   -0.185226008714165, ...
           0.214170199417049,   -0.171100114326497, ...
           0.225133471097095,   -0.152352422812332, ...
           0.239154786963877,    -0.12905692274507, ...
           0.256178811289399,   -0.101305550820778, ...
           0.276138358027184,  -0.0692078290260413, ...
           0.298954655964909,  -0.0328904324047327, ...
           0.324537659598388,  0.00750331087052589, ...
           0.352786404500042,    0.051813985149172, ...
           0.383589405779368,   0.0998667164434487, ...
           0.416825098062871,    0.151471862576143, ...
            0.45236231525705,    0.206425761611617, ...
           0.490060808201047,    0.264511535616429, ...
           0.529771798166021,    0.325499946577443, ...
           0.571338564016803,    0.389150301099554, ...
           0.614597060718629,    0.455211400312543, ...
           0.659376566747944,    0.523422531238264, ...
           0.705500357852257,     0.59351449570565, ...
           0.752786404500042,    0.665210672752924, ...
           0.801048090268115,     0.73822811032415, ...
           0.850094948331419,    0.812278641951724, ...
           0.899733413148556,    0.887070024017783, ...
            0.94976758437655,    0.962307089106245, ...
                           1,     1.03769291089375, ...
            1.05023241562345,     1.11292997598221, ...
            1.10026658685145,     1.18772135804827, ...
            1.14990505166858,     1.26177188967585, ...
            1.19895190973188,     1.33478932724708, ...
            1.24721359549996,     1.40648550429435, ...
            1.29449964214774,     1.47657746876174, ...
            1.34062343325206,     1.54478859968746, ...
            1.38540293928137,     1.61084969890044, ...
             1.4286614359832,     1.67450005342255, ...
            1.47022820183398,     1.73548846438357, ...
            1.50993919179895,     1.79357423838838, ...
            1.54763768474295,     1.84852813742386, ...
            1.58317490193713,     1.90013328355655, ...
            1.61641059422063,     1.94818601485083, ...
            1.64721359549996,     1.99249668912947, ...
            1.67546234040161,     2.03289043240473, ...
            1.70104534403509,     2.06920782902604, ...
            1.72386164197281,     2.10130555082078, ...
             1.7438211887106,     2.12905692274507, ...
            1.76084521303612,     2.15235242281233, ...
             1.7748665289029,      2.1711001143265, ...
            1.78582980058295,     2.18522600871417, ...
            1.79369176105158,      2.1946743575237, ...
            1.79842138274262,     2.19940787243888, ...
                         1.8];
    case(1)
        x = [...
                        -0.2,    0.200394751707415, ...
          -0.197632074113926,    0.203550428317536, ...
          -0.190537641577373,     0.20984932752389, ...
          -0.178744700874426,    0.219266590449002, ...
          -0.162299793354357,    0.231765051458446, ...
          -0.141267819554184,     0.24729538483662, ...
          -0.115731783065902,    0.265796299452815, ...
         -0.0857924629592233,    0.287194780649306, ...
         -0.0515680160526365,    0.311406378396845, ...
         -0.0131935106024186,     0.33833554058035, ...
           0.029179606750063,    0.367875990099447, ...
          0.0753841086690532,    0.399911144295632, ...
           0.125237647094306,    0.434314575050763, ...
           0.178543472885573,     0.47095050774108, ...
           0.235091212301573,    0.509674357077618, ...
           0.294657697249033,    0.550333297718296, ...
           0.357007846025204,    0.592766867399704, ...
           0.421895591077941,    0.636807600208364, ...
           0.489064850121911,    0.682281687492175, ...
           0.558250536778387,    0.729009663803767, ...
           0.629179606750063,    0.776807115168617, ...
           0.701572135402176,    0.825485406882765, ...
           0.775142422497131,    0.874852427967815, ...
           0.849600119722835,    0.924713349345189, ...
           0.924651376564823,    0.974871392737498, ...
           0.999999999999999,      1.0251286072625, ...
            1.07534862343517,     1.07528665065481, ...
            1.15039988027716,     1.12514757203219, ...
            1.22485757750287,     1.17451459311723, ...
            1.29842786459783,     1.22319288483138, ...
            1.37082039324994,     1.27099033619623, ...
            1.44174946322161,     1.31771831250782, ...
            1.51093514987809,     1.36319239979164, ...
            1.57810440892206,      1.4072331326003, ...
            1.64299215397479,     1.44966670228171, ...
            1.70534230275097,     1.49032564292238, ...
            1.76490878769842,     1.52904949225892, ...
            1.82145652711443,     1.56568542494924, ...
            1.87476235290569,     1.60008885570437, ...
            1.92461589133095,     1.63212400990055, ...
            1.97082039324994,     1.66166445941965, ...
            2.01319351060242,     1.68859362160315, ...
            2.05156801605264,     1.71280521935069, ...
            2.08579246295922,     1.73420370054718, ...
             2.1157317830659,     1.75270461516338, ...
            2.14126781955418,     1.76823494854155, ...
            2.16229979335436,       1.780733409551, ...
            2.17874470087443,     1.79015067247611, ...
            2.19053764157737,     1.79644957168246, ...
            2.19763207411393,     1.79960524829259, ...
                         2.2];
    case(2)
        x = [...
                         0.2,   -0.200394751707415, ...
           0.197632074113926,   -0.203550428317536, ...
           0.190537641577373,    -0.20984932752389, ...
           0.178744700874426,   -0.219266590449002, ...
           0.162299793354357,   -0.231765051458446, ...
           0.141267819554184,    -0.24729538483662, ...
           0.115731783065902,   -0.265796299452815, ...
          0.0857924629592233,   -0.287194780649306, ...
          0.0515680160526365,   -0.311406378396845, ...
          0.0131935106024186,    -0.33833554058035, ...
          -0.029179606750063,   -0.367875990099447, ...
         -0.0753841086690532,   -0.399911144295632, ...
          -0.125237647094306,   -0.434314575050763, ...
          -0.178543472885573,    -0.47095050774108, ...
          -0.235091212301573,   -0.509674357077618, ...
          -0.294657697249033,   -0.550333297718296, ...
          -0.357007846025204,   -0.592766867399704, ...
          -0.421895591077941,   -0.636807600208364, ...
          -0.489064850121911,   -0.682281687492175, ...
          -0.558250536778387,   -0.729009663803767, ...
          -0.629179606750063,   -0.776807115168617, ...
          -0.701572135402176,   -0.825485406882765, ...
          -0.775142422497131,   -0.874852427967815, ...
          -0.849600119722835,   -0.924713349345189, ...
          -0.924651376564823,   -0.974871392737498, ...
          -0.999999999999999,     -1.0251286072625, ...
           -1.07534862343517,    -1.07528665065481, ...
           -1.15039988027716,    -1.12514757203219, ...
           -1.22485757750287,    -1.17451459311723, ...
           -1.29842786459783,    -1.22319288483138, ...
           -1.37082039324994,    -1.27099033619623, ...
           -1.44174946322161,    -1.31771831250782, ...
           -1.51093514987809,    -1.36319239979164, ...
           -1.57810440892206,     -1.4072331326003, ...
           -1.64299215397479,    -1.44966670228171, ...
           -1.70534230275097,    -1.49032564292238, ...
           -1.76490878769842,    -1.52904949225892, ...
           -1.82145652711443,    -1.56568542494924, ...
           -1.87476235290569,    -1.60008885570437, ...
           -1.92461589133095,    -1.63212400990055, ...
           -1.97082039324994,    -1.66166445941965, ...
           -2.01319351060242,    -1.68859362160315, ...
           -2.05156801605264,    -1.71280521935069, ...
           -2.08579246295922,    -1.73420370054718, ...
            -2.1157317830659,    -1.75270461516338, ...
           -2.14126781955418,    -1.76823494854155, ...
           -2.16229979335436,      -1.780733409551, ...
           -2.17874470087443,    -1.79015067247611, ...
           -2.19053764157737,    -1.79644957168246, ...
           -2.19763207411393,    -1.79960524829259, ...
                        -2.2];
    case(3)
        x = [...
                        -0.2,    0.199407872438878, ...
          -0.201578617257383,    0.194674357523696, ...
          -0.206308238948418,    0.185226008714165, ...
          -0.214170199417049,    0.171100114326497, ...
          -0.225133471097095,    0.152352422812332, ...
          -0.239154786963877,     0.12905692274507, ...
          -0.256178811289399,    0.101305550820778, ...
          -0.276138358027184,   0.0692078290260413, ...
          -0.298954655964909,   0.0328904324047327, ...
          -0.324537659598388, -0.00750331087052589, ...
          -0.352786404500042,   -0.051813985149172, ...
          -0.383589405779368,  -0.0998667164434487, ...
          -0.416825098062871,   -0.151471862576143, ...
           -0.45236231525705,   -0.206425761611617, ...
          -0.490060808201047,   -0.264511535616429, ...
          -0.529771798166021,   -0.325499946577443, ...
          -0.571338564016803,   -0.389150301099554, ...
          -0.614597060718629,   -0.455211400312543, ...
          -0.659376566747944,   -0.523422531238264, ...
          -0.705500357852257,    -0.59351449570565, ...
          -0.752786404500042,   -0.665210672752924, ...
          -0.801048090268115,    -0.73822811032415, ...
          -0.850094948331419,   -0.812278641951724, ...
          -0.899733413148556,   -0.887070024017783, ...
           -0.94976758437655,   -0.962307089106245, ...
                          -1,    -1.03769291089375, ...
           -1.05023241562345,    -1.11292997598221, ...
           -1.10026658685145,    -1.18772135804827, ...
           -1.14990505166858,    -1.26177188967585, ...
           -1.19895190973188,    -1.33478932724708, ...
           -1.24721359549996,    -1.40648550429435, ...
           -1.29449964214774,    -1.47657746876174, ...
           -1.34062343325206,    -1.54478859968746, ...
           -1.38540293928137,    -1.61084969890044, ...
            -1.4286614359832,    -1.67450005342255, ...
           -1.47022820183398,    -1.73548846438357, ...
           -1.50993919179895,    -1.79357423838838, ...
           -1.54763768474295,    -1.84852813742386, ...
           -1.58317490193713,    -1.90013328355655, ...
           -1.61641059422063,    -1.94818601485083, ...
           -1.64721359549996,    -1.99249668912947, ...
           -1.67546234040161,    -2.03289043240473, ...
           -1.70104534403509,    -2.06920782902604, ...
           -1.72386164197281,    -2.10130555082078, ...
            -1.7438211887106,    -2.12905692274507, ...
           -1.76084521303612,    -2.15235242281233, ...
            -1.7748665289029,     -2.1711001143265, ...
           -1.78582980058295,    -2.18522600871417, ...
           -1.79369176105158,     -2.1946743575237, ...
           -1.79842138274262,    -2.19940787243888, ...
                        -1.8];
end;
