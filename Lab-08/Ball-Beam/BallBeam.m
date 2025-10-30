function H_BallBeam = BallBeam(m, g, d, L, J, R)
    s = tf('s');
    H_BallBeam = (-m*g*d) / ((s^2)*L*((J/(R^2)) + m));
end

% m = 0.111;
% R = 0.015;
% g = -9.8;
% L = 1.0;
% d = 0.03;
% J = 9.99e-6;