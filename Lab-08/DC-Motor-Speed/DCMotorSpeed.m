function H_DCMotorSpeed = DCMotorSpeed(K, L, R, J, b)
    s = tf('s');
    H_DCMotorSpeed = K / ((s*L + R) * (s*J + b) + K^2);
end

% J = 0.01;
% b = 0.1;
% K = 0.01;
% R = 1;
% L = 0.5;