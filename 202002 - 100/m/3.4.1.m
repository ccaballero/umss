% leer datos previamente formateados
table = readtable('../csv/3.4.csv')

% personalizar grafica
title('Periodo en función de la longitud')
xlabel('Longitud [m]')
ylabel('Periodo [s]')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
