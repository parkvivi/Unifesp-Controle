function H_InvertedPendulum = InvertedPendulum(M, m, b, I, g, l)
    s = tf('s');
    q = (M+m)*(I+m*l^2)-(m*l)^2;
    H_Pendulum = (m*l*s/q)/(s^3 + (b*(I + m*l^2))*s^2/q - ((M + m)*m*g*l)*s/q - b*m*g*l/q);
    H_CartPosition = (((I+m*l^2)/q)*s^2 - (m*g*l/q))/(s^4 + (b*(I + m*l^2))*s^3/q - ((M + m)*m*g*l)*s^2/q - b*m*g*l*s/q);
    H_InvertedPendulum = [H_Pendulum; H_CartPosition];
end

% M = 0.5;
% m = 0.2;
% b = 0.1;
% I = 0.006;
% g = 9.8;
% l = 0.3;