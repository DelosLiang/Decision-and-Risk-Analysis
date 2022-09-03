clc;
x1 = 1000;
x2 = 5000;
x3 = 10000;
x4 = 50000;
x5 = 100000;

figure;
K = plot(x1,s1,'ko');
hold on
L = plot(x2*2/5,s2,'ks');
M = plot(x3*3/10,s3,'k^');
N = plot(x4*2/25,s4,'kd');
O = plot(x5/20,s5,'k*');
xlim([500 5500]);
ylim([0.0036 0.0186]);
yticks([0.0036 0.0061 0.0086 0.0111 0.0136 0.0161 0.0186]);
ylabel('Probability of Exceedance','FontWeight','bold');
grid on
set(gca,'XGrid','off');
set(gca,'GridLineStyle',':');
set(gca,'GridAlpha',1);
set(gca,'xtick',[],'xticklabel',[]);
set(gca,'Box','on');
hold off
