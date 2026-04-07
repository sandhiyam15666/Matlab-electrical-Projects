clc;
clear;

% PARAMETERS
Isc = 5;     % Short circuit current (A)
Voc = 50;    % Open circuit voltage (V)

V = linspace(0, Voc, 100);   % Voltage range

% PV CURRENT MODEL (simple linear approximation)
I = Isc * (1 - (V / Voc));

% POWER CALCULATION
P = V .* I;

% FIND MAX POWER POINT
[Pmax, index] = max(P);
Vmp = V(index);
Imp = I(index);

% DISPLAY RESULTS
fprintf('\n--- Solar PV Results ---\n');
fprintf('Maximum Power: %.2f W\n', Pmax);
fprintf('Voltage at MPP: %.2f V\n', Vmp);
fprintf('Current at MPP: %.2f A\n', Imp);

% PLOT I-V CURVE
figure;
plot(V, I, 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('I-V Characteristics of Solar PV');
grid on;

% PLOT P-V CURVE
figure;
plot(V, P, 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Power (W)');
title('P-V Characteristics of Solar PV');
grid on;
