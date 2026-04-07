clc;
clear;

% INPUTS
V = input('Enter Supply Voltage (V): ');
Ra = input('Enter Armature Resistance (Ohms): ');
Ia = input('Enter Armature Current (A): ');
phi = input('Enter Flux (Wb): ');

% CONSTANT (machine constant)
k = 1;  

% SPEED CALCULATION
N = (V - Ia * Ra) / (k * phi);

% OUTPUT
fprintf('\n--- DC Motor Speed Result ---\n');
fprintf('Motor Speed: %.2f RPM\n', N);

% ANALYSIS: Speed vs Voltage
V_range = 0:10:V;
N_values = (V_range - Ia * Ra) / (k * phi);

figure;
plot(V_range, N_values, 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Speed (RPM)');
title('Speed vs Voltage of DC Motor');
grid on;
