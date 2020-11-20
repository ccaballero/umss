% leer datos previamente formateados
table = readtable('./practica31.csv')

% personalizar grafica
title('Intensidad luminica en función de la distancia')
xlabel('Distancia [m]')
ylabel('Intensidad luminica [lux]')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off

