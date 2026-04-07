clc;
clear;

% INPUT SECTION
P = input('Enter Active Power (W): ');
pf1 = input('Enter Initial Power Factor: ');
pf2 = input('Enter Desired Power Factor: ');
V = input('Enter Voltage (V): ');
f = input('Enter Frequency (Hz): ');

% CALCULATION
phi1 = acos(pf1);
phi2 = acos(pf2);

Qc = P * (tan(phi1) - tan(phi2));
C = Qc / (2 * pi * f * V^2);

% OUTPUT
fprintf('\n--- Results ---\n');
fprintf('Reactive Power Compensation: %.2f VAR\n', Qc);
fprintf('Required Capacitance: %.6f F\n', C);
