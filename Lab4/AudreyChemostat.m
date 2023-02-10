x = -1:0.2:3;
y = -1:0.2:3;

a1 = -1;
a2 = -1;

for i = 1:length(x)
    for j = 1:length(y)
        u(i,j) = a1*y(j)/(1+y(j))*x(i)-x(i);
        v(i,j) = -y(j)/(1+y(j))*x(i)-y(j)+a2;
        
        % scale arrows to same length
        c = sqrt(u(i,j)^2 + v(i,j)^2); 
        u(i,j) = .5*u(i,j)/c;
        v(i,j) = .5*v(i,j)/c;
    end
end

u = u';
v = v';

% if not running try 'clear u v' and run it again
% something "matlab storing memory Weird" thing ig
quiver(x, y, u, v)
hold on

[t, Z] = ode45(@func, [0,15], [0.5,0.5]);
plot(Z(:,1), Z(:,2))
hold off
title("Bacteria Density vs Nutrient Concentration")
xlabel("Bacteria Density");
ylabel("Nutrient Concentration");

% plotting solution over time (ode45)
function h = func(t, Y)
    x = Y(1);
    y = Y(2);
    a1 = -1;
    a2 = -1;
    h(1) = a1 *(y/(1+y))* x - x;
    h(2) = -1 *(y/(1+y))* x - y + a2;
    h = h';
end