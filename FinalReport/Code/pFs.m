%% function of calculation of P(Failure)
function y = pFs(x,L,no)
% no: number of Monte Carlo simulations L: width of the structure
mu1 = 53.503;  % E(x) = 53.503KN·m 𝜇 of standard value of bending moment
cv1 = 0.016;  % CoV = 1.6%
sigma1 = mu1 * cv1;  % σ = E(x)·CoV
a1 = mu1^2/sigma1;  % parameter a
b = sigma1/mu1;  % parameter b    
u1 = unifrnd(0,1,no,round(a1));
X = log(u1);
Y = X';
Z = sum(Y(:,1:no));
A = - (b)*Z;
B = A';  % Gamma Distribution
mu2 = 2.0962*L*(1+0.8902*sqrt(L+50*exp(-L/50)-50));  % E(x) = 0.5 kN/m^2, 
% 𝜇 of standard value of basic wind pressure
cv2 = 0.01;  % CoV = 1.0%
sigma2 = mu2 * cv2;  % σ = E(x)·CoV
gamma = 0.5772156649;  % Euler's constantγ = 0.5772156649
a2 = pi/sqrt(6)*1/sigma2;  % parameter a
u2 = mu2 - gamma/a2;  % parameter u
v = unifrnd(0,1,no,1);
F = u2 - (1/a2).*(log(log(1./v)));  % Gumbel Distribution
m = (B - F);
n = sum(m<=0);
pFs = n/no;  % P(Failure)
y = pFs