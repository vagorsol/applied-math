tempfunc = @(t, Y) SEIRfunc(t, Y, .5);
[t,Z] = ode45(tempfunc, [0 30], [99,0,1,0]);
% subplot(1,2,1)
plot(t,Z)

title('nu = .5')
legend('Susceptible','Exposed','Infected','Recovered')
axis([0 20 0 100])
xlabel('Time (in weeks)')
ylabel('Number of people')


% tempfunc2 = @(t,Y) SEIRfunc(t, Y, .7);
% [t,Z] = ode45(tempfunc2, [0 30], [99,0,1,0]);
% subplot(1,2,2)
% plot(t, Z)

% title('nu=.7')
% legend('Susceptible','Exposed','Infected','Recovered')
% axis([0 20 0 100])
% xlabel('Time (in weeks)')
% ylabel('Number of people') 

