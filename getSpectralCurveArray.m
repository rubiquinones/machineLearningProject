%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% retrieve spectral curve value n x p
% n is the pixel count of plant
% p is the band count

function [clusterArray] = getSpectralCurveArray(image, i, j)
    
    clusterArray = [];
    
    for k=1:numel(i)
        for l=1:244
            clusterArray(l,k) = image(i(k),j(k),l);
        end     
    end
    
end

