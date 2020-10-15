% practica104.m
% medicion del promedio de la intensidad del sonido
x = [40.1 38.8 41.9 35.1 37.9 40.0 44.3 50.2 35.8 34.7 ...
     40.7 33.8 52.5 40.5 41.5 40.9 43.6 39.2 45.7 45.6 ...
     45.2 41.6 45.7 48.5 41.8 43.2 42.7 45.6 49.8 35.9]

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
P = 0.1
% calculo del error
e = max(s, P)
% calculo del error porcentual
E = (e / m) * 100
