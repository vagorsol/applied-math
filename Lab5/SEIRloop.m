for i = 1:6
    nu = .5 + .1*(i-1);
    tempfunc = @(t,Y) SEIRfunc(t, Y, nu);
    [t, Z] = ode45(tempfunc, [0 30], [99, 0, 1, 0]);
    subplot(2,3,i)
    plot(t,Z)
    axis([0 20 0 100])
    title(strcat('nu = ', num2str(nu)))
    legend('Susceptible','Exposed','Infected','Recovered')
    xlabel('Time (in weeks)')
    ylabel('Number of people')
end