% t = 0:0.1:10;
% plot(t,sin(t), 'Color', [0.5,0.5,1], 'LineWidth', 3, 'LineStyle', '--')

% errors, and yet, it works
% scatter(t, sin(t),'filled', 'color', [0.5 0.5 0.5])


for i = 1:20
    tempfunc = @(t,Y) func(t, Y, -1, -1, 1, -1);
    [t, Y] = ode45(tempfunc, [0, 10], [1,i*(-1)^(i)]);
    plot(Y(:,1), Y(:,2), 'Color', [0.5, 1-0.1*i/4, 0.8], 'LineWidth',2)
    hold on 
    plot(Y(:,1), Y(:,2) + 25, 'Color', [1, 1-0.1*i/4, 1], 'LineWidth',2)
end 

function h = func(t, Y, a, b, c, d)
    x = Y(1);
    y = Y(2);
    h(1) = a*x + b*y;
    h(2) = c*x + d*y;
    h = h';
end