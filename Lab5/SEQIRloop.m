for i = 1:10
    q = .1*(i);
    tempfunc = @(t,Y) SEQIRfunc(t, Y, q);
    [t, Z] = ode45(tempfunc, [0 30], [99, 0, 0, 1, 0]);
    subplot(2,5,i)
    plot(t,Z)
    axis([0 30 0 100])
    title(strcat('q = ', num2str(q)))
    legend('Susceptible','Exposed','Quarantined', 'Infected','Recovered')
    xlabel('Time (in weeks)')
    ylabel('Number of people')
end