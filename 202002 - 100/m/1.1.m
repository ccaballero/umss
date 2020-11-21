% medicion de distancia
x = [3.99 3.90 3.86 4.02 3.90 3.96 3.86 4.09 4.07 4.02 ...
     3.99 3.91 3.95 3.97 3.90 3.93 3.88 4.04 3.97 3.90 ...
     3.84 4.11 3.81 4.04 3.97 4.07 3.92 3.87 4.00 3.85]

% tamano de la muestra
n = length(x)
% sumatoria
S = sum(x)
% promedio
m = mean(x)
% calculo de las discrepancias
d = x - m
% calculo de las discrepancias al cuadrado
d2 = d.*d
% sumatoria de las discrepancias al cuadrado
S2 = sum(d2)
% calculo del error
s = sqrt(S2 / (n * (n - 1)))
% precision del instrumento
P = 0.01
% calculo del error
e = max(s, P)
% calculo del error porcentual
E = (e / m) * 100
