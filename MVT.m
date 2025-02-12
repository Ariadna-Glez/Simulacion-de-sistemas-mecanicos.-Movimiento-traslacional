function dz = MVT(t, z, option)

    % Definición de parámetros
    m1 = 290;      % kg
    b1 = 1000;     % Ns/m
    m2 = 59;       % kg
    k1 = 16182;    % N/m
    f = 0;         % N 
    k2 = 19000;    % N/m

    dz = zeros(4,1); 
    
    %-----------------------------------------%  
    if option == 1
        z_t = 0.05 * sin(0.5 * pi * t);  % z1(t)
    else
        z_t = 0.05 * sin(20 * pi * t);   % z2(t)
    end 
    %-----------------------------------------%

    % Ecuaciones diferenciales
    dz(1) = z(3);
    dz(2) = z(4); 
    dz(3) = (f - b1*z(3) + b1*z(4) - k1*z(1) + k1*z(2)) / m1;  % dx3/dt
    dz(4) = (-f + k2*z_t + b1*z(3) - b1*z(4) + k1*z(1) - (k1 + k2)*z(2) ) / m2;  % dx4/dt
    
end
