%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  1:(i-SIZE,j-SIZE) | 2:(i,j-SIZE) | 3:(i+SIZE,j-SIZE)
% ---------------------------------------
%  4:(i-SIZE,j)      | 5:(i,j)      | 6:(i+SIZE,j)
% ---------------------------------------
%  7:(i-SIZE,j+SIZE) | 8:(i,j+SIZE) | 9:(i+SIZE,j+SIZE)

% retrieve spectral curve value for (i, j) in all bands where a
% a LENGTHRADIUS x WIDTHRADIUS pixel box is constructed to compute average
% PADDING is a set number. Increase if necessary when getting exceeding
% index values

%Band1 to Band244 == 540nm to 1755nm 
%every hyperspectral image is 5 nm

function [] = getSpectralCurveForPixelBox(image, i, j, LENGTHRADIUS, WIDTHRADIUS)
    
    area = (LENGTHRADIUS*2) * (WIDTHRADIUS*2);
    if (area < 50)
        PADDING = 50;
    else
        PADDING = 100;
    end
    
    point = image(i,j,:);   
    [x,y,z]=size(point);
    bandNumber=z;
    wavelengthCount = 540;
    
    for k=1:(bandNumber) 
        A = image;
        A = A(:,:,k);
        B=nan(size(A)+(PADDING*2));
        PADDINGTEMP=PADDING+1;
        B(PADDING:end-PADDINGTEMP,PADDING:end-PADDINGTEMP)=A;
           
        band(k)=wavelengthCount;  % storing wavelength count
        
        tmp=B((i+(PADDING-1))-LENGTHRADIUS:(i+(PADDING-1))+LENGTHRADIUS,(j+(PADDING-1))-WIDTHRADIUS:(j+(PADDING-1))+WIDTHRADIUS);
        result(k)=mean(tmp(~isnan(tmp)));
        
        wavelengthCount = wavelengthCount + 5;
    end
    
    figure;
    plot(band,result);
    title(['Spectral Curve for (' num2str(i) ', ' num2str(j) ') with window of: [Length Radius:' num2str(LENGTHRADIUS) ', Width Radius:' num2str(WIDTHRADIUS) ']' ]);
    xlabel('Band Number') % x-axis label
    ylabel('Pixel Average') % y-axis label

    
end

