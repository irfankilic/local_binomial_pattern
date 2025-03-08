clc;    % Clear the command window.
close all;  % Close all figures (except those of imtool.)
clear;  % Erase all existing variables.

% Read in a standard MATLAB gray scale demo image.
k=1;
for z=1:17
klasor = strcat(num2str(z),'/mini_dataset');
yol = strcat(klasor,'*.*g*');
dosya=dir(yol);

for i=1:length(dosya)
    oku = strcat(klasor,dosya(i).name);
    
 rgb = imread(oku);
 grayImage = rgb2gray(rgb);

[pixelCounts, GLs] = imhist(uint8(grayImage));

ozellik(k,1:256)=pixelCounts';
ozellik(k,257) =z;
k=k+1
end
end
