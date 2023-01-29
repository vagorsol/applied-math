logisticfunc = @(t, N0, r, B)  (N0 * B)./(N0+(B-N0) * exp(-r.*t));

t = ScrData(:,1);
pop = ScrData(:,2);
scatter(t,pop)
hold on 
plot(logisticfunc(0:1:53, 0.05, 0.4, 13))
hold off
title("Scerevisiae Data & Logistic Equation")
xlabel("Time")
ylabel("Population")
