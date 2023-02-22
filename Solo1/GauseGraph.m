% get time 
t = GauseData(:,1);

%isolation data
aurelia_iso = GauseData(:,2);
caudatum_iso = GauseData(:,3);

% in competition data
aurelia_comp = GauseData(:,4);
caudatum_comp = GauseData(:,5);

% TODO: "different line styles/symbols" - ask about this I guess?
plot(t, aurelia_iso)
hold on
plot(t, caudatum_iso)
plot(t, aurelia_comp, '--')
plot(t, caudatum_comp, '--')

title('Population of P. aurelia and P. caudatum (in isolation and competition with one another)')
legend('P. aurelia in isolation', 'P. caudatum in isolation','P. aurelia in competition', 'P. caudatum in competition')
axis([0 25 0 700])
xlabel('Day')
ylabel('Mean Density (# per 0.5 ml)')