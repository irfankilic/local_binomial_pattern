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

localBinomialPatternImage = zeros(size(grayImage));
for row = 5 : rows - 4   
	for col = 5 : columns - 4       
				centerPixel = grayImage(row, col);
                
        p15 = grayImage(row-4, col) > centerPixel; 
        
        p24 = grayImage(row-3, col-1) > centerPixel; 
        p25 = grayImage(row-3, col) > centerPixel; 
        p26 = grayImage(row-3, col+1) > centerPixel; 
        
        p33 = grayImage(row-2, col-2) > centerPixel; 
        p34 = grayImage(row-2, col-1) > centerPixel; 
        p35 = grayImage(row-2, col) > centerPixel;
        p36 = grayImage(row-2, col+1) > centerPixel; 
        p37 = grayImage(row-2, col+2) > centerPixel; 

        p42 = grayImage(row-1, col-3) > centerPixel; 
        p43 = grayImage(row-1, col-2) > centerPixel; 
        p44 = grayImage(row-1, col-1) > centerPixel;
        p45 = grayImage(row-1, col) > centerPixel; 
        p46 = grayImage(row-1, col+1) > centerPixel;
        p47 = grayImage(row-1, col+2) > centerPixel; 
        p48 = grayImage(row-1, col+3) > centerPixel; 
        
        
        p51 = grayImage(row, col-4) > centerPixel; 
        p52 = grayImage(row, col-3) > centerPixel; 
        p53 = grayImage(row, col-2) > centerPixel;
        p54 = grayImage(row, col-1) > centerPixel; 
        p56 = grayImage(row, col+1) > centerPixel;
        p57 = grayImage(row, col+2) > centerPixel; 
        p58 = grayImage(row, col+3) > centerPixel;
        p59 = grayImage(row, col+4) > centerPixel;
        
   
        p62 = grayImage(row+1, col-3) > centerPixel; 
        p63 = grayImage(row+1, col-2) > centerPixel; 
        p64 = grayImage(row+1, col-1) > centerPixel;
        p65 = grayImage(row+1, col) > centerPixel; 
        p66 = grayImage(row+1, col+1) > centerPixel;
        p67 = grayImage(row+1, col+2) > centerPixel; 
        p68 = grayImage(row+1, col+3) > centerPixel;      
        
        
        p73 = grayImage(row+2, col-2) > centerPixel; 
        p74 = grayImage(row+2, col-1) > centerPixel; 
        p75 = grayImage(row+2, col) > centerPixel;
        p76 = grayImage(row+2, col+1) > centerPixel; 
        p77 = grayImage(row+2, col+2) > centerPixel; 
        
        p84 = grayImage(row+3, col-1) > centerPixel; 
        p85 = grayImage(row+3, col) > centerPixel; 
        p86 = grayImage(row+3, col+1) > centerPixel; 
        
        p95 = grayImage(row+2, col) > centerPixel; 
        
        
		localBinomialPatternImage(row, col) = uint8(p15  +  p24 + p25*2 + p26 + p33 + p34*3 + p35*6 + p36*3 + p37 + p42 + p43*4 + p44*10 + p45*20 + p46*10 + p47*4 + p48 + p51 + p52*8 + p53*15 + p54*35 + p56*35 + p57*15 + p58*8 + p59 + p62 + p63*4 + p64*10 + p65*20 + p66*10 + p67*4 + p68 + p73 + p74*3 + p75*6 + p76*3 + p77 +  p84 + p85*2 + p86 + p95);

	end  
end 
[pixelCounts, GLs] = imhist(uint8(localBinomialPatternImage));

ozellik(k,1:256)=pixelCounts';
ozellik(k,257) =z;
k=k+1
end


end
