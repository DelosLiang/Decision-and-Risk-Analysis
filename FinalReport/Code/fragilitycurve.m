clc;
clear;
m = 35:.1:105;
cdf_gamma1 = cdf_gamma(38.7);
cdf_gamma2 = cdf_gamma(51.6);
cdf_gamma3 = cdf_gamma(64.5);
cdf_gamma4 = cdf_gamma(77.4);
cdf_gamma5 = cdf_gamma(90.2);

figure;
J = plot(sqrt(1600*m/68.4216),cdf_gamma1,'k-d','MarkerIndices',1:40:length(cdf_gamma1),'LineWidth',1);
hold on
K = plot(sqrt(1600*m/68.4216),cdf_gamma2,'k-s','MarkerIndices',1:40:length(cdf_gamma2),'LineWidth',1);
L = plot(sqrt(1600*m/68.4216),cdf_gamma3,'k-o','MarkerIndices',1:40:length(cdf_gamma3),'LineWidth',1);
M = plot(sqrt(1600*m/68.4216),cdf_gamma4,'k-x','MarkerIndices',1:40:length(cdf_gamma4),'LineWidth',1);
N = plot(sqrt(1600*m/68.4216),cdf_gamma5,'k-^','MarkerIndices',1:40:length(cdf_gamma5),'LineWidth',1);
legend('T1','T2','T3','T4','T5','Location','southeast');
xlabel('$v_0$[m/s]','Interpreter','LaTex')
ylabel('Probability of Exceedance','FontWeight','bold')
xlim([35 50])
hold off