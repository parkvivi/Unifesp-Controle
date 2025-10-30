r = randi([0 10], 2, 3);
v = randi([30 100], 2, 3);

k_values = [0 0.01];

ids = [1 2 3; 4 5 6];

for m = 1:2
    
    k = k_values(m);
    
    for n = 1:3                  
        
        r0 = r(:, n);
        r0x = r0(1, 1);
        r0y = r0(2, 1);
        
        v0 = v(:, n);
        v0x = v0(1, 1);
        v0y = v0(2, 1);
        
        sim('ProjectileMotion_SIM', 30)
        
        subplot(2, 3, ids(m, n))
        
        hold on
        
        % plot(position(:, 1), position(:, 2))
        % axis([0 500 -500 max(position(:, 2))+10])
        % xlabel('x position')
        % ylabel('y position')
        
        plot(time, position(:, 2))
        axis([0 10 0 max(position(:, 2))+10])
        xlabel('time')
        ylabel('y position')
        
        % plot(time, velocity)
        % axis([0 10 0 max(velocity)+10])
        % xlabel('time')
        % ylabel('velocity')
        
    end
end