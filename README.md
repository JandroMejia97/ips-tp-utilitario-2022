# IPS 2022 - Trabajo con Utilitario

## Introducción

En esta materia se ha puesto énfasis en la utilización de la herramienta informática Matlab u Octave como complemento del espacio de práctica, considerando que en primer término la misma brinda grandes ventajas en el aprendizaje de los temas de la materia, y en segundo término el manejo de la herramienta en sí misma es de provecho para un profesional vinculado al procesamiento de señales.

Por otra parte, consideramos que la capacidad de presentar resultados de una manera ordenada, para que puedan ser interpretados por un tercero no debe ser ajena a la formación de todo profesional, y mucho menos de un profesional de la Ingeniería.

Este trabajo con utilitario se enfoca en la utilización de Matlab u Octave como herramienta para el análisis y descripción de sistemas discretos, en particular de tipo lineal e invariante al desplazamiento (o en el tiempo).

Para ello se provee una serie de funciones en archivos de tipo .m. Para ver la ayuda de los mismos, en la ventana de comandos se debe escribir help nombreArchivo. Los archivos provistos son:

- _senial.m_: Señal del Ejercicio 1, y sus correspondientes instantes. Para ver los detalles, en la ventana de comando escribir help senial.
- _hcanald.m_: Respuesta impulsional del canal discreto del Ejercicio 2. Para ver los detalles, en la ventana de comando escribir help hcanald

Los estudiantes deben resolver las consignas planteadas y entregar:

- Un breve informe con los procedimientos utilizados (por ejemplo listado de comandos), los resultados conseguidos (por ejemplo gráficas de las señales) y las conclusiones obtenidas. El informe debe tener el lenguaje y la estructura de un documento de entrega, por lo que debe dedicarse atención al formato y a la presentación del mismo. La entrega deberá hacerse en formato digital, respetando la fecha límite. Ver condiciones de entrega debajo.
- TODOS los scripts de Matlab utilizados en la resolución, de manera que los resultados obtenidos puedan ser reproducidos por un tercero. Ver condiciones de entrega debajo.

## Condiciones de Entrega

El trabajo puede realizarse de manera individual o de grupos de hasta dos estudiantes. En caso de
detectarse copias los trabajos serán desaprobados.

La fecha límite de entrega es el día 10 de Noviembre de 2022 a las 17 hs. El trabajo será corregido
para el día 22 de Noviembre de 2022. En caso de existir correcciones, la fecha límite para la entrega
del trabajo corregido es el 29 de Noviembre de 2022 a las 17 hs.

La entrega del informe y los scripts de Matlab debe realizarse en la plataforma Moodle, subiendo dos
archivos:

1. El informe en formato PDF. El nombre del archivo debe respetar lo siguiente: **IPS-pu1-APELLIDO.pdf** si el informe se realiza de forma individual e **IPS-pu1-APELLIDO1-APELLIDO2.pdf** si se realiza entre dos.
2. Un archivo comprimido (.zip o .7z) que contenga todos los scripts de MATLAB utilizados. Debe haber un script principal para que el ayudante que corrija el informe pueda ejecutar todos y cada uno de los incisos del laboratorio de manera simple y ordenada. El nombre del archivo debe respetar lo siguiente: **IPS-pu1-scripts-APELLIDO.zip** si el informe se realiza de forma individual e **IPS-pu1-scripts-APELLIDO1-APELLIDO2.pdf** si se realiza entre dos.

Se creará una tarea dentro del aula virtual donde cada estudiante deberá subir individualmente los
archivos.

## Entrega de Correcciones

En caso de ser necesarias correcciones en el informe y/o en los scripts, las versiones corregidas deberán subirse en una nueva tarea, respetando el formato en los nombres de los archivos ya consignado pero gregando al final de cada uno Corregido. Los archivos correspondientes a la primera entrega deberán ermanecer en la plataforma, para que los docentes puedan contrastarlos con las nuevas versiones y verificar las correcciones pertinentes. Cabe destacar que esta segunda entrega no tendrá devolución, por lo que la nota definitiva del laboratorio se dará en esa instancia.

## Consejos

Para insertar gráficos hechos con Matlab en un editor de textos, un método rápido y relativamente
seguro es el siguiente:
1. En Matlab ingrese el comando **print -f1 -dpng figurita**, esto generará en el directorio actual el
archivo gráfico figurita.png. El n´umero que sigue a la opción -f es el n´umero de la figura de Matlab
que se exportará.
2. Desde el editor de texto que utilice, inserte la figura. En general es conveniente que la figura no
flote sobre el texto.

## Anexos
- **Informe inicial:** IPS-pu1-Fernadez-Hernandez.pdf
- **Informe inicial revisado:** SML_IPS-pu1-Fernadez-Hernandez_R.pdf
- **Informe final corregido:** IPS-pu1-Fernandez-Hernandez_Corregido.pdf

