% medicion  de la gravedad
x = [9.8171 9.7927 9.8116 9.7834 9.7835 9.8316 9.7927 9.8304 9.7969 9.7678 ...
     9.7338 9.8094 9.9700 9.7969 9.5951 9.7448 9.7952 9.7913 9.6635 9.8145 ...
     9.7254 9.7533 9.7943 9.7682 9.6722 9.7603 9.8135 9.7913 9.7124 9.7172]

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
P = 0.0001
% calculo del error
e = max(s, P)
% calculo del error porcentual
E = (e / m) * 100
