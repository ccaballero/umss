% practica103.m
% medicion del minimo de la intensidad del sonido
x = [26.8 27.8 27.3 25.3 24.7 25.5 27.1 30.4 25.0 25.0 ...
     27.5 24.0 31.7 26.8 27.6 25.6 27.1 25.2 29.8 26.3 ...
     29.0 28.0 28.6 31.1 28.7 30.7 28.1 30.0 32.3 25.5]

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
