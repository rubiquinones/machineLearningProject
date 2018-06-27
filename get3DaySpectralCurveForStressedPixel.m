%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% retrieve spectral curve value for (i, j) in all bands

%Band1 to Band244 == 540nm to 1755nm 
%every hyperspectral image is 5 nm

function [] = get3DaySpectralCurveForStressedPixel(HSImage_stressed1, HSImage_stressed2, HSImage_stressed3, i, j, k, l)    
    
    % for stressed image 1
    S=HSImage_stressed1;
    point=S(i,j,:);
    wavelengthCount = 540;
    
    bandNumber=size(point);
    bandNumber=bandNumber(3); % extracting the number of bands
    for n=1:(bandNumber) 
        x(n)=wavelengthCount; % storing wavelength count
        
        pointValue = (point(1,1,n));
        y1(n) = pointValue;
        
        wavelengthCount = wavelengthCount + 5;
    end
    %%%
    
    % for stressed image 2
    S=HSImage_stressed2;
    point=S(i,j,:);
    wavelengthCount = 540;
    
    bandNumber=size(point);
    bandNumber=bandNumber(3); % extracting the number of bands
    for n=1:(bandNumber) 
        x(n)=wavelengthCount; % storing wavelength count
        
        pointValue = (point(1,1,n));
        y2(n) = pointValue;
        
        wavelengthCount = wavelengthCount + 5;
    end
    %%%
    
    % for stressed image 3
    S=HSImage_stressed3;
    point=S(i,j,:);
    wavelengthCount = 540;
    
    bandNumber=size(point);
    bandNumber=bandNumber(3); % extracting the number of bands
    for n=1:(bandNumber) 
        x(n)=wavelengthCount; % storing wavelength count
        
        pointValue = (point(1,1,n));
        y3(n) = pointValue;
        
        wavelengthCount = wavelengthCount + 5;
    end
    %%%
    
     % for stressed image 1
    S=HSImage_stressed1;
    point=S(k,l,:);
    wavelengthCount = 540;
    
    bandNumber=size(point);
    bandNumber=bandNumber(3); % extracting the number of bands
    for n=1:(bandNumber) 
        x(n)=wavelengthCount; % storing wavelength count
        
        pointValue = (point(1,1,n));
        y4(n) = pointValue;
        
        wavelengthCount = wavelengthCount + 5;
    end
    %%%
    
    % for stressed image 2
    S=HSImage_stressed2;
    point=S(k,l,:);
    wavelengthCount = 540;
    
    bandNumber=size(point);
    bandNumber=bandNumber(3); % extracting the number of bands
    for n=1:(bandNumber) 
        x(n)=wavelengthCount; % storing wavelength count
        
        pointValue = (point(1,1,n));
        y5(n) = pointValue;
        
        wavelengthCount = wavelengthCount + 5;
    end
    %%%
    
    % for stressed image 3
    S=HSImage_stressed3;
    point=S(k,l,:);
    wavelengthCount = 540;
    
    bandNumber=size(point);
    bandNumber=bandNumber(3); % extracting the number of bands
    for n=1:(bandNumber) 
        x(n)=wavelengthCount; % storing wavelength count
        
        pointValue = (point(1,1,n));
        y6(n) = pointValue;
        
        wavelengthCount = wavelengthCount + 5;
    end
    %%%
    
    figure;
    plot(x, y1, x, y2, x, y3, x, y4, x, y5, x, y6) ;
    set(findall(gca, 'Type', 'Line'),'LineWidth',2);
    set(gca,'fontsize',20);
    lgd = legend('Day02 First Random Pixel','Day18 First Random Pixel', 'Day28 First Random Pixel', 'Day02 Second Random Pixel','Day18 Second Random Pixel', 'Day28 Second Random Pixel');
    lgd.FontSize = 14;
    title(['Spectral Curve for Stressed Pixels at (' num2str(i) ',' num2str(j) ') and (' num2str(k) ',' num2str(l) ')' ]);
    xlabel('Wavelength (nm)') % x-axis label
    ylabel('Reflection Coefficient') % y-axis label

    
end

