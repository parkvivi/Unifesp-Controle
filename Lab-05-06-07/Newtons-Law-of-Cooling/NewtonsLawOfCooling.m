% Model the following problem in Simulink: The temperature inside your
% house is 70°F and it is 30°F outside. At 1:00 A.M. the furnace breaks
% down. At 3:00 A.M. the temperature in the house has dropped to 50°F.
% Assuming the outside temperature is constant and that Newton’s Law
% of Cooling applies, determine when the temperature inside your house
% reaches 40°F.

sim('NewtonsLawOfCooling_SIM', 15)

figure
plot(time, temperature)
grid
title('Newtons Law of Cooling')
xlabel('Time (h)')
ylabel('Temperature (°F)')

targetTemperature = 40;
tolerance = 0.3;
timeIndex = find(temperature > targetTemperature - tolerance & temperature < targetTemperature + tolerance);
tagetTime = time(timeIndex);

% Count starts at 1:00 AM
sprintf('The temperature inside reaches %d°F at %d:00', targetTemperature, 1+tagetTime)