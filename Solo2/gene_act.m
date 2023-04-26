% s = s(t) = s0 * t
% tempfunc = @(t,Y) func(t, Y, 0.4);


for i=0.05:0.05:0.25
    tempfunc = @(t,Y) func(t, Y, 0.4, i);
    [t, Y] = ode45(tempfunc,[0 25], [i 0]);
    plot(0:length(Y(:,2))-1, Y(:,2))
    hold on
end

title('Gene Activation')
legend('s0 = 0.05','s0 = 0.1','s0 = 0.15','s0 = 0.2', 's0 = 0.25')
axis([0 60 0 180])
xlabel('Time')
ylabel('Level of Gene Product')

function h = func(t, Y, d, s0) 
    s = Y(1);
    g = Y(2);
    
    h(1) = s0 * t; 
    h(2) = s - d*g + (g^2)/(1+g^2);
    
    h=h';
end
