% practica102.m
% medicion del maximo de la intensidad del sonido
x = [54.4 63.7 65.1 49.0 58.1 64.0 67.1 72.2 47.7 48.1 ...
     60.9 43.6 72.6 61.1 64.9 58.6 64.5 59.4 69.1 64.2 ...
     69.1 58.3 67.7 68.4 56.8 57.7 63.7 67.2 70.8 57.6]

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
