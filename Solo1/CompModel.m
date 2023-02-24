% get time 
tg = GauseData(:,1);

% in competition data
aurelia_comp = GauseData(:,4);
caudatum_comp = GauseData(:,5);

[t,Z] = ode45(@NaNcfunc, [0 25], [2, 2]);
plot(t, Z)
hold on
scatter(tg, aurelia_comp)
scatter(tg, caudatum_comp)

title('Population of P. aurelia and P. caudatum in Competition')
legend('P. aurelia model', 'P. caudatum model','P. aurelia data', 'P. caudatum data')
axis([0 25 0 550])
xlabel('Day')
ylabel('Mean Density (# per 0.5 ml)')
hold off