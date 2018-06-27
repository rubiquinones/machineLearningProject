%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

folder_path = 'images/input/6-13-17cotton/613-181-01/2017-06-14_09-40-59_1048600';

[HSImage] = readHSImages(folder_path);

[outputBandImage] = showBand(HSImage, 1);

[rowMontage, blockMontage] = showBands(HSImage, 5, 20);

showWavelength(HSImage, 122); % under construction

getSpectralCurveForPixel(HSImage, 437, 149);

getSpectralCurveForPixelBox(HSImage, 561, 320, 7, 7);

stressed_plant1 = 'images/input/6-13-17cotton/613-182-02/2017-06-15_05-39-38_1076500'; %02 2nd day
stressed_plant2 = 'images/input/6-13-17cotton/613-182-02/2017-07-01_07-18-25_1587600'; %02 18th day
stressed_plant3 = 'images/input/6-13-17cotton/613-182-02/2017-07-10_07-00-52_1993700'; %02 28th day
[HSImage_stressed1] = readHSImages(stressed_plant1);
[HSImage_stressed2] = readHSImages(stressed_plant2);
[HSImage_stressed3] = readHSImages(stressed_plant3);
get3DaySpectralCurveForStressedPixel(HSImage_stressed1, HSImage_stressed2, HSImage_stressed3, 361,100, 437, 149);

controlled_plant = 'images/input/6-13-17cotton/613-181-01/2017-07-11_07-03-13_2041000'; %01 28th day
stressed_plant = 'images/input/6-13-17cotton/613-182-02/2017-07-10_07-00-52_1993700'; %02 28th day
[HSImage_stressed] = readHSImages(stressed_plant);
[HSImage_controlled] = readHSImages(controlled_plant);
getAverageSpectralCurve(HSImage_controlled,HSImage_stressed, 437,149);

getSpectralCurveInteraction(HSImage);

%functions to look up
%averageSpectralGraph(spectralCube) 
%roipoly function
%look at stability of bands

%showWavelength(num)
%showWavelength(range) 
%showSubImage(range)





