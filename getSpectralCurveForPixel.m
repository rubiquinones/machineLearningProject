%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% retrieve spectral curve value for (i, j) in all bands

%Band1 to Band244 == 540nm to 1755nm 
%every hyperspectral image is 5 nm

function [] = getSpectralCurveForPixel(image, i, j)
    
    S=image;
    point=S(i,j,:);
    wavelengthCount = 540;
    
    bandNumber=size(point);
    bandNumber=bandNumber(3); % extracting the number of bands
    for n=1:(bandNumber) 
        x(n)=wavelengthCount; % storing wavelength count
        
        pointValue = (point(1,1,n));
        y(n) = pointValue;
        
        wavelengthCount = wavelengthCount + 5;
    end
    figure;
    plot(x,y) ;
    title(['Spectral Curve for (' num2str(i) ',' num2str(j) ')' ]);
    xlabel('Wavelength (nm)') % x-axis label
    ylabel('Pixel Intensity') % y-axis label

    
end

