function H_Suspention = Suspention(M1, M2, K1, K2, b1, b2)
    s = tf('s');
    H1_Suspention = ((M1+M2)*s^2+b2*s+K2)/((M1*s^2+b1*s+K1)*(M2*s^2+(b1+b2)*s+(K1+K2))-(b1*s+K1)*(b1*s+K1));
    H2_Suspention = (-M1*b2*s^3-M1*K2*s^2)/((M1*s^2+b1*s+K1)*(M2*s^2+(b1+b2)*s+(K1+K2))-(b1*s+K1)*(b1*s+K1));
    H_Suspention = [H1_Suspention; H2_Suspention];
end

% M1 = 2500;
% M2 = 320;
% K1 = 80000;
% K2 = 500000;
% b1 = 350;
% b2 = 15020;