%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% retrieve spectral curve value for (i, j) in all bands

%Band1 to Band244 == 540nm to 1755nm 
%every hyperspectral image is 5 nm

function [] = getAverageSpectralCurve(HSImage_controlled,HSImage_stressed, i, j)

    % for stressed
    S=HSImage_stressed;
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
    
    % for controlled
    S=HSImage_controlled;
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
    
    
    
    figure;
    plot(x, y1, x, y2) ;
    set(findall(gca, 'Type', 'Line'),'LineWidth',2);
    set(gca,'fontsize',20);
    lgd = legend('Stressed Plant','Controlled Plant');
    lgd.FontSize = 14;
    title('Average Spectral Curve for Stressed and Controlled Plant');
    xlabel('Wavelength (nm)') % x-axis label
    ylabel('Reflection Coefficient') % y-axis label



end

