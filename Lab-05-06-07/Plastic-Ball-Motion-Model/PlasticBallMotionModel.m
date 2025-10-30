k = 5; % k = c/m

v0_values = [5 10 15 20];

for i = 1:4
    
    v0 = v0_values(i);
    
    sim('PlasticBallMotionModel_SIM', 15);
    
    subplot(2, 2, i);
    grid
    plot(time, position);
    axis([0 5 0 3.5]);
end