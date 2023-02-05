average(1,4,10);

[time, pop] = ode45(@func, [0,1], 1);
% plot(time,pop)

[time2, pop2] = ode45(@func2, [0,1],1);
plot(time2, pop2)

function av = average(a, b, c)
    sum = a + b + c;
    av = sum/3;
end

function f = func(t,x)
    f = 2.*x;
end

function f = func2(t,x)
    f = 3.*(x^2);
end