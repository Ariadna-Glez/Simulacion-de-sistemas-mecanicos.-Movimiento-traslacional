tspan = [0 10];   % tiempo
z0 = [0; 0; 0; 0]; % Condiciones iniciales

% Opcion 1 z1(t)
option = 1;
[t1, z1] = ode45(@(t, z) MVT(t, z, option), tspan, z0);

% Opcion 1 z2(t)
option = 2;
[t2, z2] = ode45(@(t, z) MVT(t, z, option), tspan, z0);

% ----------------------- GRAFICAR OPCIÓN 1 -----------------------
figure;
subplot(2,1,1); % Crear dos subgráficas
plot(t1, z1(:,1), 'r', 'LineWidth', 1.5); hold on;
plot(t1, z1(:,2), 'y', 'LineWidth', 1.5);
xlabel('Tiempo (s)');
ylabel('Desplazamiento (m)');
legend('Carroceria (x1))', 'Rueda (x2)');
title('Respuesta del sistema - Opción 1: z_1(t) = 0.05 * sin(0.5\pi t)');
grid on;

% ----------------------- GRAFICAR OPCIÓN 2 -----------------------
subplot(2,1,2);
plot(t2, z2(:,1), 'r', 'LineWidth', 1.5); hold on;
plot(t2, z2(:,2), 'y', 'LineWidth', 1.5);
xlabel('Tiempo (s)');
ylabel('Desplazamiento (m)');
legend('Carroceria (x1))', 'Rueda (x2)');
title('Respuesta del sistema - Opción 2: z_2(t) = 0.05 * sin(20\pi t)');
grid on;
