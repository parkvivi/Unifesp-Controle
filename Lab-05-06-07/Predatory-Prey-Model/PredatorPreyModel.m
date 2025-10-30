ic = [50 40 90; 50 100 20];

for i = 1:3
    
    prey0 = ic(1, i);
    predator0= ic(2, i);
    
    sim('PredatorPreyModel_SIM', 15);
    
    subplot(2, 3, i);
    hold on
    plot(time, prey, 'b');
    plot(time, predator, 'r');
    axis([0 20 0 300]);
    
    subplot(2, 3, i+3);
    plot(prey, predator, 'm');
    axis([0 300 0 150]);
    
end