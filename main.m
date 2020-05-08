% Cybernetyka projekt
% sup-M, Reich, FITA
% Authors:
%   Bebel
%   Chodkiewicz
%   Skorus
%   Pojda

X = linspace(0, 10, 100);
Y = linspace(0, 4, 100);

A1 = trimf(X, [0 2 3]);
A2 = trimf(X, [2 4 8]);

B1 = trimf(Y, [2 3 4]);
B2 = trimf(Y, [0 2 3]);

AprimTrim = trimf(X, [0 2 3]);
AprimTrap = trapmf(X, [2 2.4 2.7 3]);

R1 = Implication_reich(A1, B1);
R2 = Implication_reich(A2, B2);
% Wnioskowanie
% dla trapezu
B1primTrap = Operation_O(AprimTrap, R1);
B2primTrap = Operation_O(AprimTrap, R2);
% dla trojkata
B1primTrim = Operation_O(AprimTrim, R1);
B2primTrim = Operation_O(AprimTrim, R2);

% Agregacja
BtrapMIN = min(B1primTrap, B2primTrap);
BtrimMIN = min(B1primTrim, B2primTrim);

 BtrapAVG = zeros(1, 100);
 BtrimAVG = zeros(1, 100);
for i=1:100
    BtrapAVG(i) = (B1primTrap(i)+B2primTrap(i))/2;
end
for i=1:100
    BtrimAVG(i) = (B1primTrim(i)+B2primTrim(i))/2;
end 

% figure('Name', 'R1, BtrimAVG')
% hold on;
% plot(Y,R1)
% plot(Y,BtrimAVG)
% hold off;
% figure('Name', 'R2, BtrapAVG')
% hold on;
% plot(Y,R1&R2)
% plot(Y,BtrapAVG)
% hold off;
% figure('Name', 'R1&R2')
% plot(Y,R1&R2)
% Wyniki
figure('Name', 'Btrap min')
plot(Y,BtrapMIN)
figure('Name', 'Btrap avg')
plot(Y,BtrapAVG)

figure('Name', 'Btrim min')
plot(Y,BtrimMIN)
figure('Name', 'Btrim avg')
plot(Y,BtrimAVG)

