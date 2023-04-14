% s = s(t) = s0 * t
tempfunc = @(t,Y) func(t, Y, 0.4);
[t, Y] = ode45(tempfunc,[0, 25] , [0.05 0]);

plot(Y(:,1), Y(:,2)) % i have no idea what's happening here

function h = func(t, Y, d) 
    s = Y(1);
    g = Y(2);
    
    h(1) = s * t; 
    h(2) = s - d*g + (g^2)/(1+g^2);
    
    h=h';
end