function H_AircraftPitch = AircraftPitch()
    s = tf('s');
    % Modelled according to data from one of Boeing's commercial aircraft
    H_AircraftPitch = (1.151*s + 0.1774) / (s^3 + 0.739*s^2 + 0.921*s);
end