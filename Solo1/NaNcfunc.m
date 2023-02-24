function v = NaNcfunc(t, Y)
    % betas
    b12 = 1.725;
    b21 = 0.375;
    
    % aurelia params
    r1 = 0.8;
    K1 = 550;
    
    % caudatum params
    r2 = 0.65;
    K2 = 230;
    
    N1 = Y(1);
    N2 = Y(2);
    
    v(1) = r1*N1*((K1-N1-b12*N2)/K1);
    v(2) = r2*N2*((K2-N2-b21*N1)/K2);
    
    v=v';
    
end