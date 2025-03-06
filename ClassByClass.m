clc
close all



load('Sonuc_SVM_Histogram.mat');
Class_By_C(1,1)=0;
for i=1:17
Class_By_C(i,1) = (C(i,i) / sum(C(i,:)))*100;
end
load('Sonuc_SVM_LBP.mat');
for i=1:17
Class_By_C(i,2) = (C(i,i) / sum(C(i,:)))*100;
end
load('Sonuc_SVM_LBGP.mat');
for i=1:17
Class_By_C(i,3) = (C(i,i) / sum(C(i,:)))*100;
end


save Class_By_Class_bir.mat Class_By_C
plot(Class_By_C())

