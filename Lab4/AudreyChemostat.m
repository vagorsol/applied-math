x = 0:0.2:3;
y = 0:0.2:3;

a1 = 2;
a2 = 2;

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

% trajectories
[t, Z] = ode45(@func, [0,15], [0.5,0.5]);
[t2, Z2] = ode45(@func, [0,15], [1.5,1.5]);
[t3, Z3] = ode45(@func, [0,15], [2.5,2.5]);

plot(Z(:,1), Z(:,2))
plot(Z2(:,1), Z2(:,2))
plot(Z3(:,1), Z3(:,2))

hold off
title("Bacteria Density vs Nutrient Concentration")
xlabel("Bacteria Density");
ylabel("Nutrient Concentration");

% plotting solution over time (ode45)
function h = func(t, Y)
    x = Y(1);
    y = Y(2);
    a1 = 2;
    a2 = 2;
    h(1) = a1 *(y/(1+y))* x - x;
    h(2) = -1 *(y/(1+y))* x - y + a2;
    h = h';
end