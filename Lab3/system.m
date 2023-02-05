y0 = [1;0]; % initial conditions is a vector: (x,y) = (1,0)
[t, Y] = ode45(@f, [0 20], y0);
plot(Y(:,1),Y(:,2)) % plot the x and y positions of the output

% function f with inputs t (a number) 
% and Y (a vector contiant 2 entries: x and y)
function v = f(t, Y) 
    x = Y(1);
    y = Y(2);
    v(1) = -y; % dx/dt = ax + by 
    v(2) = x; % dy/dt = cx + dy
    v = v'; % transposes output to a column vector
end
    
