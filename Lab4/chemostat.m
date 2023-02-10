x = 0:0.2:3;
y = 0:0.2:3;

for i = 1:length(x)
    for j = 1:length(y)
        u(i,j) = 2*y(j)/(1+y(j))*x(i)-x(i);
        v(i,j) = -y(j)/(1+y(j))*x(i)-y(j)+2;
        
        % scale arrows to same length
        c = sqrt(u(i,j)^2 + v(i,j)^2); 
        u(i,j) = .5*u(i,j)/c;
        v(i,j) = .5*v(i,j)/c;
    end
end

u = u';
v = v';


quiver(x, y, u, v)
hold on

[t, Z] = ode45(@func, [0,15], [0.5,0.5]);
% plot(t, Z(:,1)) % N & C: Z(:,1), Z(:,2) | t & N: t, Z(:,1)
plot(Z(:,1), Z(:,2))
hold off
title("Bacteria Density vs Nutrient Concentration")

function h = func(t, Y)
    x = Y(1);
    y = Y(2);
    a1 = 2;
    a2 = 2;
    h(1) = a1 *(y/(1+y))* x - x;
    h(2) = -1 *(y/(1+y))* x - y + a2;
    h = h';
end

