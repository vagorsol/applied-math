f = @(t,N) N*(1-N);
[t1, N1] = ode45(f,[0 5],0.5); % t=0-5 w N0 for func f
plot(t1, N1)
title("Logistic equation")
xlabel("Time")
ylabel("Pop.")

g = @(t,y) 1/((y+1)*(t-2));
[t2, forsakenSoln] = ode45(g, [0 2],0);
plot(t2, forsakenSoln)
% gives a warning @ line 9: "failure at t=2.0e+00 bc (well you can run it
% again to see)"