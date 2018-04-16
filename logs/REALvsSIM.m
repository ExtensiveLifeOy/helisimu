clear all
close all
clc
load REALvsSIM
figure, subplot(2,1,1),
histogram(TReal.ADH, 'FaceColor', 'b')
hold on, histogram(TSim.ADH,'FaceColor','r')
legend('real','simulation')
subplot(2,1,2)
pdr = fitdist(TReal.ADH,'Kernel','Kernel','epanechnikov');
x_values = 0:0.005:1;
yr = pdf(pdr,x_values);
plot(x_values,yr)
pds = fitdist(TSim.ADH,'Kernel','Kernel','epanechnikov');
ys = pdf(pds,x_values);
hold on
plot(x_values,ys,'r')
ylabel('PDF(adh)')
xlabel('adh')
legend('real','simulation')