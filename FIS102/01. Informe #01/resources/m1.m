clear
close all
clc

g = 9.78
e_g = 0.02

m_base = 40.8
m_gr = [0 23.4 46.9 70 93.1 116.4 139.6 162.9 185.7 207.8 231.1 254.4 277.6 301 324.3 347.5 370.3 393.6 420.1 443.2 466.7 489.8 512.5 535.9 559.4 583 606.2 623.4 640.7 658.3 674.8 697.1 733.5 769.4 802.3 837 862.3 898.2 932.2 965.6 1007.2 1046 1085.2 1126.3]
m_kg = (m_gr+m_base)./1000
e_m = 0.1/1000

l_base = 0.8
l_cm = [
    4.1 4.6 5.5 6.4 7.5 7.9 8.9 9.8 10.8 ...
    11.6 12.7 13.5 14.6 15.8 16.2 17.1 17.8 18.1 ...
    19.1 19.3 19.7 20.3 20.6 21.3 ...
    22.5 23.2 24.2 24.7 25 25.4 25.5 25.8 26.5 27.7 28 29 29.1 29.5 29.8 30.5 30.8 31.3 31.8 32.3]
l_m = (l_cm+l_base)./1000
e_l = 1/1000

a = (2/1000)*(1.6/1000)
e_a = sqrt( ((2/1000)^2*(0.1/1000)^2) + ((1.6/1000)^2*(0.1/1000)^2) )

d = l_m-l_m(1)

s = arrayfun(@(x) (x*g)/a, m_kg)
e_s = arrayfun(@(x) sqrt( ((g/a)^2*e_m^2) + ((x/a)^2*e_g^2) + (((x*g)/a^2)^2*e_a^2) ), m_kg)

f = d/l_m(1)
e_f = arrayfun(@(x) sqrt( ((1/l_m(1))^2*e_l^2) + ((x/l_m(1)^2)^2*e_l^2) ), d)

%title('Esfuerzo - Deformación unitaria')
%xlabel('Deformacion ($\epsilon$)','interpreter','latex')
%ylabel('Esfuerzo ($\sigma$)','interpreter','latex')

%hold on
%plot(f, s, 'o')
%hold off

% MINIMOS CUADRADOS

% cambio de variable y remover el primer elemento
x = log10(s(1:18))
y = log10(f(1:18))

% tamano de la muestra
n = length(x)

% calculo de las sumatorias
sx = sum(x)
sy = sum(y)

xx = x.*x
sxx = sum(xx)

yy = y.*y
syy = sum(yy)

xy = x.*y
sxy = sum(xy)

% calculo de los valores de la recta
D = (n * sxx) - (sx)^2
DD = (n * syy) - (sy)^2
A = ( (sy * sxx) - (sxy * sx) ) / D
B = ( (n * sxy) - (sx * sy) ) / D

% calculo del error
Y = A + (B * x)
d = y - Y

dd = d.*d
sdd = sum(dd)
s2 = sdd / ( n - 2)

sA = sqrt( (s2 * sxx) / D )
sB = sqrt( (s2 * n) / D )

% calculando el error porcentual
EA = (sA / A) * 100
EB = (sB / B) * 100

% calculando los valores originales
a = 10^A
b = B

% calculando el error absoluto
sa = (10^A) * log(10) * sA
sb = sB

% calculando el error porcentual
Ea = (sa / a) * 100
Eb = (sb / b) * 100

% calculo de correlacion
R = ((n * sxy) - (sx * sy)) / sqrt( D * DD )

