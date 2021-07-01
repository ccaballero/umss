function graficar(t,_x,_y,x,y)
    % personalizar grafica
    title(t)
    xlabel(_x)
    ylabel(_y)

    % graficar puntos y lineas
    hold on
    plot(x, y, 'o')
    hold off
end

