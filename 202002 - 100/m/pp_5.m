% leer datos previamente formateados
table = readtable('ip_4.csv')

% personalizar grafica
title('Presion en funcion del volumen')
xlabel('Presion')
ylabel('Volumen')

% graficar puntos y lineas
hold on
plot(table.Var1, table.Var2, 'o')
hold off
