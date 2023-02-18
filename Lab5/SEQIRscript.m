q = 0.5;
tempfunc = @(t,Y) SEQIRfunc(t, Y, q);
[t,Z] = ode45(tempfunc, [0 20], [99, 0, 0, 1, 0]);

plot(t,Z)

title('SEQIR model')
legend('Susceptible','Exposed', 'Quarantined', 'Infected','Recovered')
axis([0 20 0 100])
xlabel('Time (in weeks)')
ylabel('Number of people')