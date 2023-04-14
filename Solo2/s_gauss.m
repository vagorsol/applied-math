for i=0.05:0.05:0.25
    fplot(@(t) i * exp(((-(t-10)^2)/20)), [0 25])
    hold on
end

title('Concentration of Biochemical Substance (S)')
legend('s0 = 0.05','s0 = 0.1','s0 = 0.15','s0 = 0.2', 's0 = 0.25')
xlabel('Time')
ylabel('Concentration of S')