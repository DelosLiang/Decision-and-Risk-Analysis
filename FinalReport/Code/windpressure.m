%% MC algorithm for standard value of basic wind pressure

clear;
clc;
mu = 0.5;  % E(x) = 0.5 kN/m^2
cv = 0.01;  % Cv = 1.0%
sigma = mu * cv;  % σ = E(x)·Cv
gamma = 0.5772156649;  % Euler's constantγ = 0.5772156649
a = pi/sqrt(6)*1/sigma;  % parameter a
u = mu - gamma/a;  % parameter u
v = unifrnd(0,1,10000,1);
F = u - (1/a).*(log(log(1./v)));

figure;
histfit(F,20,'kernel');
xlabel('Sandard Value of Basic Wind Pressure($kN/m^2$)','Interpreter','LaTex')
ylabel('Frequency')


