
T = [0, 20];

z1 = @(t) 0.05*sin(0.5*pi*t);  
z2 = @(t) 0.05*sin(20*pi*t); 

X0 = [0, 0, 0, 0];
[t1, x1] = ode45(@(t,s) Mecanico(t, s, z1), T, X0);
[t2, x2] = ode45(@(t,s) Mecanico(t, s, z2), T, X0);
    
figure
plot(t1, x1(:,1), 'LineWidth', 0.5)
hold on
plot(t1, x1(:,3), 'LineWidth', 0.5)
grid on
legend('x1(t)', 'x3(t)')
xlabel('Tiempo (s)')
ylabel('Valores')
title('Graficas con Z1')

figure
plot(t2, x2(:,1), 'LineWidth', 0.5)
hold on
plot(t2, x2(:,3), 'LineWidth', 0.5)
grid on
legend('x1(t)', 'x3(t)')
xlabel('Tiempo (s)')
ylabel('Valores')
title('Graficas con Z2')
