R = 100;
L = 1;
C = 0.0001;

V = 10;

sim('RLCCircuit_SIM', 15);

% Current
subplot(1, 2, 1);
title('current x time');
plot(time, current);
axis([0 0.2 0 0.06]);

% Charge
subplot(1, 2, 2);
title('charge x time');
plot(time, charge);
axis([0 0.2 0 0.06]);

% V(R)

% V(L)

% V(C)