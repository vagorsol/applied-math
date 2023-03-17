for i = 1:20
    tempfunc = @(t,Y) func(t, Y, 2, -9, 1, 2);
    [t, Y] = ode45(tempfunc, [0, 2], [1,i*(-1)^(i)]);
    plot(Y(:,1), Y(:,2), 'Color', [191/255, 172/255, 226/255], 'LineWidth', 1, 'LineStyle','-')
    hold on
end 
hold on

for i = 1:20
    tempfunc = @(t,Y) func(t, Y, 3, -2, 4, -1);
    [t, Y] = ode45(tempfunc, [0, 5], [1,i*(-1)^(i)]);
    plot(Y(:,1), Y(:,2), 'Color', [62/255, 84/255, 172/255], 'LineWidth',1, 'LineStyle', ':')
    hold on 
end 

for i = 1:20
    tempfunc = @(t,Y) func(t, Y, 3, -3, 1, 2);
    [t, Y] = ode45(tempfunc, [0, 2], [1,i*(-1)^(i)]);
    plot(Y(:,1), Y(:,2), 'Color', [101/255, 93/255, 187/255], 'LineWidth', 1, 'LineStyle', '--')
    hold on 
end 

function h = func(t, Y, a, b, c, d)
    x = Y(1);
    y = Y(2);
    h(1) = a*x + b*y;
    h(2) = c*x + d*y;
    h = h';
end