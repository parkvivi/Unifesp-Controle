function H_DCMotorPosition = DCMotorPosition(K, L, R, J, b)
    s = tf('s');
    H_DCMotorPosition = K / (s * ((s*L + R) * (s*J + b) + K^2));
end

% J = 3.2284E-6;
% b = 3.5077E-6;
% K = 0.0274;
% R = 4;
% L = 2.75E-6;