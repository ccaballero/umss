% leer datos previamente formateados
table = readtable('ip_3.csv')

% personalizar grafica
title('Oscilacion en funcion de la longitud')
xlabel('Longitud')
ylabel('Oscilacion')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
