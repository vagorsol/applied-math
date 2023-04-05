% defining variables
k1 = 1;
kn1 = 1;
k2 = 0.5;
k3 = 1;
kn3 =1;
e0 = 0.1; 

vmax = k2*e0;
km = (kn1 + k2)/k1;
ki = kn3/k3;
ks = kn1/k1;

i = 0; % change as need be
t = 0:0.1:10; % s = [0, 10]

% initialize output variables
comp_inhib = zeros(3, length(t));
allo_inhib = zeros(3, length(t));

for i = 0:2     % i = 0, 1, 2
    for s = 1:length(t)
        comp_inhib(i+1,s) = (vmax*t(s))/(km*(1+i/ki)+t(s));
        allo_inhib(i+1,s) = vmax/(1+i/ki)*(t(s)/(ks+t(s)));
    end
end

figure(1)
plot(t, comp_inhib')
legend('i=0','i=1','i=2')
axis([0 10 0 vmax])
xlabel('Substrate (s)')
ylabel('V_c(s,i)')
title('Competitive inhibition (w/QSS approx.)')
shg

figure(2)
plot(t, allo_inhib')
legend('i=0','i=1','i=2')
axis([0 10 0 vmax])
xlabel('Substrate (s)')
ylabel('V_a(s,i)')
title('Allosteric inhibition (w/eqm approx.)')
shg
