%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Band1 to Band244 == 540nm to 1755nm 
%every hyperspectral image is 5 nm
%NDVI = (NIR - VIS) / (NIR + VIS)
% 770nm = NIR
% 680nm = VIS

clear all;

plantIndex = '613-182-02';
timestamp = '2017-07-06_07-24-44_1807600';
k = 3;

kMeansClustering(plantIndex, timestamp, k);
