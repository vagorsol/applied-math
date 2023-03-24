% k1 = 1, k2 = 0.5, kn1 = 1, r = 0.1
tempfunc = @(t,Y) funcR(t, Y, 1, 0.5, 1, 0.1); 
[t,Y] = ode45(tempfunc, [0 50], [1,0]);
% plot(Y(:,1), Y(:,2))
% hold on 

tempfunc2 = @(t,Y) funcMM(t, Y, 1, 0.5, 1, 0.1); 
[t1,Y1]= ode45(tempfunc2, [0 50], [1,0]);
% plot(Y1(:,1),Y1(:,2))

%{
title('Binding Kinetics')
xlabel('Nutrient Concentration')
ylabel('Occupied Receptors')
legend('Reduced','MM')
%}


hold on

plot(t, Y(:,1))
plot(t1, Y1(:,1))

title('Occupied Receptors')
xlabel('# of Occupied Receptors')
ylabel('Time')
legend('Reduced','MM')

function h = funcR(t, Y, k1, k2, kn1, r)
    c = Y(1);
    x1 = Y(2);
    h(1) = -k1*c*(r-x1)+kn1*x1;
    h(2) = k1*c*(r-x1)-(kn1+k2)*x1;
    h = h';
end

function h = funcMM(t, Y, k1, k2, kn1, r)
    c = Y(1);
    x1 = Y(2);
    
    kN = (kn1 + k2) /k1;
    kmax = k2*r;
    
    h(1) = -(kmax * c) / (kN + c);
    h(2) = k1*c*(r-x1)-(kn1+k2)*x1;
    h = h';
end