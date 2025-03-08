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
% Get the dimensions of the image.  numberOfColorBands should be = 1.
[rows columns numberOfColorBands] = size(grayImage);

localBinaryPatternImage = zeros(size(grayImage));
for row = 3 : rows - 2   
	for col = 3 : columns - 2       
				centerPixel = grayImage(row, col);
        p11 = grayImage(row-2, col-2) > centerPixel; 
        p12 = grayImage(row-2, col-1) > centerPixel;  
        p13 = grayImage(row-2, col) > centerPixel; 
        p14 = grayImage(row-2, col+1) > centerPixel; 
        p15 = grayImage(row-2, col+2) > centerPixel;  
        
		p21 = grayImage(row-1, col-2) > centerPixel; 
        p22 = grayImage(row-1, col-1) > centerPixel;  
        p23 = grayImage(row-1, col) > centerPixel; 
        p24 = grayImage(row-1, col+1) > centerPixel; 
        p25 = grayImage(row-1, col+2) > centerPixel;  
  
        p31 = grayImage(row, col-2) > centerPixel; 
        p32 = grayImage(row, col-1) > centerPixel;  
        p34 = grayImage(row, col+1) > centerPixel; 
        p35 = grayImage(row, col+2) > centerPixel;  
        
		p41 = grayImage(row+1, col-2) > centerPixel; 
        p42 = grayImage(row+1, col-1) > centerPixel;  
        p43 = grayImage(row+1, col) > centerPixel; 
        p44 = grayImage(row+1, col+1) > centerPixel; 
        p45 = grayImage(row+1, col+2) > centerPixel;  
        
        p51 = grayImage(row+2, col-2) > centerPixel; 
        p52 = grayImage(row+2, col-1) > centerPixel;  
        p53 = grayImage(row+2, col) > centerPixel; 
        p54 = grayImage(row+2, col+1) > centerPixel; 
        p55 = grayImage(row+2, col+2) > centerPixel; 
        
		localBinaryPatternImage(row, col) = uint8(p11 + p12*4 + p13*7 + p14*4 + p15 + p21*4 + p22*16 + p23*32 + p24*16 + p25*4 + p31*7 + p32*32 + p34*32 + p35*7  + p41*4 + p42*16 + p43*32 + p44*16 + p45*4 + p51 + p52*4 + p53*7 + p54*4 + p55);

	end  
end 
[pixelCounts, GLs] = imhist(uint8(localBinaryPatternImage));

ozellik(k,1:256)=pixelCounts';
ozellik(k,257) =z;
k=k+1
end


end
