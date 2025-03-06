clc
close all



load('CubicSVM10Foldv4.mat')

Fold_By_Fold(:,1) = fold*100;

load('FineKNN10Foldv4.mat')

Fold_By_Fold(:,2) = fold*100;



save Fold_By_Fold.mat Fold_By_Fold
plot(Fold_By_Fold())

