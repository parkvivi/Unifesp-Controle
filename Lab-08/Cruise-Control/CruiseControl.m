function H_CruiseControl = CruiseControl(m, b)
    s = tf('s');
    H_CruiseControl = 1 / (m*s + b);
    
    % alternativamente:
    % num = [1];
    % den = [m b];
    % H_CruiseControl = tf(num, den);
end

% m = 1000;
% b = 50;