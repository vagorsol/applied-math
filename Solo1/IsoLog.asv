%isolation data
aurelia_iso = GauseData(:,2);
caudatum_iso = GauseData(:,3);

aurelia_func = @(t, N, r, K) r*N*(1-(N/K)); % (2*exp(r*t))/(1+(2/-0.5)*(exp(r*t)-1));
aurelia_param = @(t, N) aurelia_func(t, N, 0.65, 230);
[t, N] = ode45(aurelia_param, [0 25], 2);

plot(t, N)
hold on
t = GauseData(:,1);
scatter(t, caudatum_iso)

title('P. caudatum isolation approximate logistic DE')
legend('P. caudatum approx. logistic DE', 'P. caudatum Guase Data')
axis([0 25 0 700])
xlabel('Day')
ylabel('Mean Density (# per 0.5 ml)')