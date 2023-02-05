y0 = [3;1]; % initial conditions: x=3, y=1
[t, Y] = ode45(@func, [0 2], y0);
plot(Y(:,1),Y(:,2)) % plot the x and y positions of the output
xlabel("x")
ylabel("y")

% function f with inputs t (a number) 
% and Y (a vector contiant 2 entries: x and y)
function v = func(t, Y) 
    x = Y(1);
    y = Y(2);
    v(1) = x-y; % dx/dt 
    v(2) = 2.*y; % dy/dt
    v = v'; % transposes output to a column vector
end
    
