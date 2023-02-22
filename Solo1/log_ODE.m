function v = log_ODE(t, N, r)
    v = 2*exp(r*t)/(1+(2/-0.5)*(exp(r*t)-1));
end