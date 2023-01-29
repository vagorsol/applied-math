f = @(t,N) sin(N);
[t1, N1] = ode45(f,[0 10],1);
plot(t1, N1)
hold on
[t2, N2] = ode45(f,[0 10],3);
hold off
hold on
plot(t2,N2)
hold off
hold on
[t3,N3] = ode45(f,[0 10],5);
plot(t3,N3)
hold off

title("dx/dt = sin(x)")
xlabel("t")
ylabel("x(t)")