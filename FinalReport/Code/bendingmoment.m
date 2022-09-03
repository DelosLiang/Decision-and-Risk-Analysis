%% MC algorithm for standard value of maximum bending moment

clear;
clc;
mu = 53.503;  % E(x) = 53.503KN·m
cv = 0.016;  % Cv = 1.6%
sigma = mu * cv;  % σ = E(x)·Cv
a = mu^2/sigma;  % parameter a
b = sigma/mu;  % parameter b                       
u = unifrnd(0,1,10000,round(a));
X = log(u);
Y = X';
Z = sum(Y(:,1:10000));
A = - (b)*Z;
B = A';

figure;
histfit(B,20,'gamma');
xlabel('Sandard Value of Maximum Bending Moment(kN·m)')
ylabel('Frequency')


