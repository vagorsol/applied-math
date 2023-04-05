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

i = 0; % change as need be
t = 0:0.1:10; % 0 <= s <= 10

comp_inhib = @(t)((vmax*t)/(km*(1+(i/ki)+t)));

%{
 value checking
for j= 1:10
    x = (vmax*t)/(km*(1+(j/ki)+t))
    
end
%}

plot(t, comp_inhib(t))
axis([0 10 0 0.0252])
