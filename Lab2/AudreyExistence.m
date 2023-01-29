f = @(t, y) 1/((y+1).*(t-2)); 
% limit = 2/sqrt(exp(1));
[t1, N1] = ode45(f,[0 1],0);
plot(t1, N1)
hold on
[t2, N2] = ode45(f,[0 0.8],0);
plot(t2,N2)
[tl, Nl] = ode45(f,[0 2/sqrt(exp(1))],0); % interval w/soln from class
plot(tl, Nl)

[t3, N3] = ode45(f,[0 3],0); % interval w/soln from class
plot(t3, N3)

hold off
title("ODE")
xlabel("t")
ylabel("y(t)")