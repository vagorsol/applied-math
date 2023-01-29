v = [1 2 3];
w = [2 3 4];
% v.*w
A = [1 2 3; 4 5 6];
A(:,2:3);

% formatted like this bc I'm lazy + don't want to try and be clever
SKdata = [16.0459	0.996241;
15.9215	1.11219;
15.2418	1.21121;
24.1325	1.41564;
29.0058	1.67558;
31.3861	2.3069;
32.2051	1.95934;
47.7182	2.72313;
72.2135	4.85993;
92.8451	5.68492;
117.901	5.80823;
141.409	5.82284];

t = SKdata(:,1);
pop = SKdata(:,2);
scatter(t,pop)
hold on;
logGause = @(t) (5.8./(1+exp(2.47-0.0607*t))); 
plot(t, logGause(t))


