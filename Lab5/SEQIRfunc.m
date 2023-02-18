function v = SEQIRfunc(t, Y, q)
    b = .05;
    eta = .5;
    nu = 0.5;
    gamma =.1;
    
    S = Y(1);
    E = Y(2);
    Q = Y(3);
    I = Y(4);
    R = Y(5);
    
    v(1) = -b*S*I + gamma*R;
    v(2) = b*S*I - eta*E;
    v(3) = q*eta*E - nu*Q;
    v(4) = (1 - q)*eta*E - nu*I;
    v(5) = nu*(I + Q) - gamma*R;
    
    v = v';
end