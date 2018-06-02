clear all
close all
clc
load REALvsSIM
load ADH365m
figure, subplot(2,1,1),
histogram(TReal.ADH, 'FaceColor', 'b')
hold on, histogram(TSim.ADH,'FaceColor','r')
hold on, histogram(ADH365m01,'FaceColor','g')
legend('real','Braidford','Proposed')
subplot(2,1,2)
pdr = fitdist(TReal.ADH,'Kernel','Kernel','epanechnikov');
x_values = 0:0.005:1;
yr = pdf(pdr,x_values);
plot(x_values,yr)
pdb = fitdist(TSim.ADH,'Kernel','Kernel','epanechnikov');
yb = pdf(pdb,x_values);
hold on
plot(x_values,yb,'r')
pdp = fitdist(ADH365m01,'Kernel','Kernel','epanechnikov');
yp = pdf(pdp,x_values);
hold on
plot(x_values,yp,'g')
ylabel('PDF(adh)')
xlabel('adh')
legend('real','Braidford','Proposed')
