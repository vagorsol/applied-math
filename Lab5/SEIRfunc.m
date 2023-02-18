function v = SEIRfunc(t, Y, nu)
    b = .05;
    eta = .5;
    gamma =.1;
    S = Y(1);
    E = Y(2);
    I = Y(3);
    R = Y(4);
    v(1) = -b*S*I + gamma*R;
    v(2) = b*S*I - eta*E;
    v(3) = eta *E - nu*I;
    v(4) = nu*I - gamma*R;
    v = v';
end