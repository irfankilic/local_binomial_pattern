clc

confus = confusionmat(cevap,tahmin)

acuracy_best = max(dogru)*100;
acuracy_min = min(dogru)*100;
acuracy_mean = mean(dogru)*100;
acuracy_std  = std(dogru)*100;

precision_best = max(P)*100;
precision_min = min(P)*100;
precision_mean = mean(P)*100;
precision_std  = std(P)*100;

recall_best = max(R)*100;
recall_min = min(R)*100;
recall_mean = mean(R)*100;
recall_std  = std(R)*100;

geo_mean_best = max(gm)*100;
geo_mean_min = min(gm)*100;
geo_mean_mean = mean(gm)*100;
geo_mean_std  = std(gm)*100;

Fscore_best = max(F1)*100;
Fscore_min = min(F1)*100;
Fscore_mean = mean(F1)*100;
Fscore_std  = std(F1)*100;


matris(1,1) = acuracy_best;
matris(2,1) = acuracy_min;
matris(3,1) = acuracy_mean;
matris(4,1) = acuracy_std;

matris(1,2) = precision_best;
matris(2,2) = precision_min;
matris(3,2) = precision_mean;
matris(4,2) = precision_std;

matris(1,3) = recall_best;
matris(2,3) = recall_min;
matris(3,3) = recall_mean;
matris(4,3) = recall_std;

matris(1,4) = geo_mean_best;
matris(2,4) = geo_mean_min;
matris(3,4) = geo_mean_mean;
matris(4,4) = geo_mean_std;

matris(1,5) = Fscore_best;
matris(2,5) = Fscore_min;
matris(3,5) = Fscore_mean;
matris(4,5) = Fscore_std;



matris
