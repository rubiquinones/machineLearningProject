%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
% processes all files
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% dlmwrite('myFile.txt',M)

% constructing featuresMatrix and outputMatrix for E1
    % assigning plantIndex and timestamps
 plantIndexS2 = '613-186-06'; %stress
 timestampS2D20 = '2017-07-03_07-06-30_1684600';%Day20
 timestampS2D21 = '2017-07-04_07-05-45_1736000';%Day21
 timestampS2D22 = '2017-07-05_07-05-27_1746000';%Day22
 plantIndexS2 = '613-191-11'; %stress
 timestampS2D20 = '2017-07-03_06-50-54_1684100';%Day20
 timestampS2D21 = '2017-07-04_06-50-11_1735500';%Day21
 timestampS2D22 = '2017-07-05_06-49-56_1745500';%Day22
 plantIndexS2 = '613-193-13'; %stress
 timestampS2D20 = '2017-07-03_06-44-44_1683900';%Day20
 timestampS2D21 = '2017-07-04_06-44-01_1735300';%Day21
 timestampS2D22 = '2017-07-05_06-43-46_1745300';%Day22
 plantIndexS2 = '613-199-19'; %stress
 timestampS2D20 = '2017-07-03_06-26-28_1683300';%Day20
 timestampS2D21 = '2017-07-04_06-25-51_1734700';%Day21
 timestampS2D22 = '2017-07-05_06-25-43_1744700';%Day22
 plantIndexS2 = '613-200-20'; %stress
 timestampS2D20 = '2017-07-03_06-24-20_1683200';%Day20
 timestampS2D21 = '2017-07-04_06-23-47_1734300';%Day21
 timestampS2D22 = '2017-07-05_06-23-34_1744600';%Day22
 plantIndexS2 = '613-183-03'; %control
 timestampS2D20 = '2017-07-03_07-15-52_1684900';%Day20
 timestampS2D21 = '2017-07-04_07-15-00_1736300';%Day21
 timestampS2D22 = '2017-07-05_07-14-40_1746300';%Day22
 plantIndexS2 = '613-187-07'; %control
 timestampS2D20 = '2017-07-03_07-03-25_1684500';%Day20
 timestampS2D21 = '2017-07-04_07-02-39_1735900';%Day21
 timestampS2D22 = '2017-07-05_07-02-17_1745900';%Day22
 plantIndexS2 = '613-192-12'; %control
 timestampS2D20 = '2017-07-03_06-47-49_1684000';%Day20
 timestampS2D21 = '2017-07-04_06-47-06_1735400';%Day21
 timestampS2D22 = '2017-07-05_06-46-51_1745400';%Day22
 plantIndexS2 = '613-197-17'; %control
 timestampS2D20 = '2017-07-03_06-32-16_1683500';%Day20
 timestampS2D21 = '2017-07-04_06-31-39_1734900';%Day21
 timestampS2D22 = '2017-07-05_06-31-26_1744900';%Day22
 plantIndexS2 = '613-198-18'; %control
 timestampS2D20 = '2017-07-03_06-29-01_1683400';%Day20
 timestampS2D21 = '2017-07-04_06-28-24_1734800';%Day21
 timestampS2D22 = '2017-07-05_06-28-16_1744800';%Day22

    % creating hyperspectral cubes
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 
    % extracting rows and columns with plant pixels
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);

[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);

    % creating cluster arrays
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));

[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));

    % transposing the cluster arrays
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';

clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
 
    % create output matrix
outputMatrix = ones(...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) ...
    , 1);
outputMatrix(size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1) + ...
    size(clusterArrayS2D20,1) + size(clusterArrayS2D21,1) + size(clusterArrayS2D22,1)+1:end) = 0;
 
    % create feature matrix
featuresMatrix = vertcat(...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22, ...
    clusterArrayS2D20, clusterArrayS2D21, clusterArrayS2D22 ...
     );
 
 
 % constructing featuresMatrix and outputMatrix for E2
    % assigning plantIndex and timestamps
 plantIndexS2 = '613-182-02'; %stress
 timestampS2D1 = '2017-06-14_09-37-53_1048500';%Day1
 timestampS2D2 = '2017-06-15_05-39-38_1076500';%Day2
 timestampS2D3 = '2017-06-16_11-07-29_1108400';%Day3
 timestampS2D4 = '2017-06-17_08-53-39_1136400';%Day4
 timestampS2D5 = '2017-06-18_08-54-50_1164400';%Day5
 timestampS2D6 = '2017-06-19_08-54-45_1194400';%Day6
 timestampS2D7 = '2017-06-20_08-53-47_1222400';%Day7
 timestampS2D8 = '2017-06-21_08-54-28_1250300';%Day8
 timestampS2D9 = '2017-06-22_09-10-17_1282300';%Day9
 timestampS2D10 = '2017-06-23_12-54-39_1308200';%Day10
 timestampS2D11 = '2017-06-24_01-03-55_1330200';%Day11
 timestampS2D12 = '2017-06-25_03-47-42_1358200';%Day12
 timestampS2D13 = '2017-06-26_11-20-35_1386200';%Day13
 timestampS2D14 = '2017-06-27_01-01-09_1414200';%Day14
 timestampS2D15 = '2017-06-28_11-04-09_1442200';%Day15
 timestampS2D16 = '2017-06-29_09-01-03_1472200';%Day16
 timestampS2D17 = '2017-06-30_09-10-46_1500100';%Day17
 timestampS2D18 = '2017-07-01_07-18-25_1587600';%Day18
 timestampS2D19 = '2017-07-02_07-18-30_1636300';%Day19
 timestampS2D20 = '2017-07-03_07-18-59_1685000';%Day20
 timestampS2D21 = '2017-07-04_07-18-12_1736400';%Day21
 timestampS2D22 = '2017-07-05_07-17-45_1746400';%Day22
 timestampS2D23 = '2017-07-06_07-24-44_1807600';%Day23
 timestampS2D24 = '2017-07-07_07-02-12_1856100';%Day24
 timestampS2D25 = '2017-07-08_07-01-39_1903300';%Day25
 timestampS2D26 = '2017-07-09_07-00-54_1948500';%Day26
 timestampS2D27 = '2017-07-10_07-00-52_1993700';%Day27
 timestampS2D28 = '2017-07-11_07-01-04_2040900';%Day28
 
    % creating hyperspectral cubes
 HSImageS2D1 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D1]);
 HSImageS2D2 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D2]);
 HSImageS2D3 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D3]);
 HSImageS2D4 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D4]);
 HSImageS2D5 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D5]);
 HSImageS2D6 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D6]);
 HSImageS2D7 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D7]);
 HSImageS2D8 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D8]);
 HSImageS2D9 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D9]);
 HSImageS2D10 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D10]);
 HSImageS2D11 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D11]);
 HSImageS2D12 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D12]);
 HSImageS2D13 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D13]);
 HSImageS2D14 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D14]);
 HSImageS2D15 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D15]);
 HSImageS2D16 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D16]);
 HSImageS2D17 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D17]);
 HSImageS2D18 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D18]);
 HSImageS2D19 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D19]);
 HSImageS2D20 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D20]);
 HSImageS2D21 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D21]);
 HSImageS2D22 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D22]);
 HSImageS2D23 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D23]);
 HSImageS2D24 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D24]);
 HSImageS2D25 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D25]);
 HSImageS2D26 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D26]);
 HSImageS2D27 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D27]);
 HSImageS2D28 = readHSImages(['images/input/6-13-17cotton/' plantIndexS2 '/' timestampS2D28]);
 
  
    % extracting rows and columns with plant pixels
[rowsS2D1,columnsS2D1] = processCubeData(plantIndexS2, timestampS2D1);
[rowsS2D2,columnsS2D2] = processCubeData(plantIndexS2, timestampS2D2);
[rowsS2D3,columnsS2D3] = processCubeData(plantIndexS2, timestampS2D3);
[rowsS2D4,columnsS2D4] = processCubeData(plantIndexS2, timestampS2D4);
[rowsS2D5,columnsS2D5] = processCubeData(plantIndexS2, timestampS2D5);
[rowsS2D6,columnsS2D6] = processCubeData(plantIndexS2, timestampS2D6);
[rowsS2D7,columnsS2D7] = processCubeData(plantIndexS2, timestampS2D7);
[rowsS2D8,columnsS2D8] = processCubeData(plantIndexS2, timestampS2D8);
[rowsS2D9,columnsS2D9] = processCubeData(plantIndexS2, timestampS2D9);
[rowsS2D10,columnsS2D10] = processCubeData(plantIndexS2, timestampS2D10);
[rowsS2D11,columnsS2D11] = processCubeData(plantIndexS2, timestampS2D11);
[rowsS2D12,columnsS2D12] = processCubeData(plantIndexS2, timestampS2D12);
[rowsS2D13,columnsS2D13] = processCubeData(plantIndexS2, timestampS2D13);
[rowsS2D14,columnsS2D14] = processCubeData(plantIndexS2, timestampS2D14);
[rowsS2D15,columnsS2D15] = processCubeData(plantIndexS2, timestampS2D15);
[rowsS2D16,columnsS2D16] = processCubeData(plantIndexS2, timestampS2D16);
[rowsS2D17,columnsS2D17] = processCubeData(plantIndexS2, timestampS2D17);
[rowsS2D18,columnsS2D18] = processCubeData(plantIndexS2, timestampS2D18);
[rowsS2D19,columnsS2D19] = processCubeData(plantIndexS2, timestampS2D19);
[rowsS2D20,columnsS2D20] = processCubeData(plantIndexS2, timestampS2D20);
[rowsS2D21,columnsS2D21] = processCubeData(plantIndexS2, timestampS2D21);
[rowsS2D22,columnsS2D22] = processCubeData(plantIndexS2, timestampS2D22);
[rowsS2D23,columnsS2D23] = processCubeData(plantIndexS2, timestampS2D23);
[rowsS2D24,columnsS2D24] = processCubeData(plantIndexS2, timestampS2D24);
[rowsS2D25,columnsS2D25] = processCubeData(plantIndexS2, timestampS2D25);
[rowsS2D26,columnsS2D26] = processCubeData(plantIndexS2, timestampS2D26);
[rowsS2D27,columnsS2D27] = processCubeData(plantIndexS2, timestampS2D27);
[rowsS2D28,columnsS2D28] = processCubeData(plantIndexS2, timestampS2D28);

    % creating cluster arrays
[clusterArrayS2D1] = getSpectralCurveArray(HSImageS2D1, rowsS2D1(:), columnsS2D1(:));
[clusterArrayS2D2] = getSpectralCurveArray(HSImageS2D2, rowsS2D2(:), columnsS2D2(:));
[clusterArrayS2D3] = getSpectralCurveArray(HSImageS2D3, rowsS2D3(:), columnsS2D3(:));
[clusterArrayS2D4] = getSpectralCurveArray(HSImageS2D4, rowsS2D4(:), columnsS2D4(:));
[clusterArrayS2D5] = getSpectralCurveArray(HSImageS2D5, rowsS2D5(:), columnsS2D5(:));
[clusterArrayS2D6] = getSpectralCurveArray(HSImageS2D6, rowsS2D6(:), columnsS2D6(:));
[clusterArrayS2D7] = getSpectralCurveArray(HSImageS2D7, rowsS2D7(:), columnsS2D7(:));
[clusterArrayS2D8] = getSpectralCurveArray(HSImageS2D8, rowsS2D8(:), columnsS2D8(:));
[clusterArrayS2D9] = getSpectralCurveArray(HSImageS2D9, rowsS2D9(:), columnsS2D9(:));
[clusterArrayS2D10] = getSpectralCurveArray(HSImageS2D10, rowsS2D10(:), columnsS2D10(:));
[clusterArrayS2D11] = getSpectralCurveArray(HSImageS2D11, rowsS2D11(:), columnsS2D11(:));
[clusterArrayS2D12] = getSpectralCurveArray(HSImageS2D12, rowsS2D12(:), columnsS2D12(:));
[clusterArrayS2D13] = getSpectralCurveArray(HSImageS2D13, rowsS2D13(:), columnsS2D13(:));
[clusterArrayS2D14] = getSpectralCurveArray(HSImageS2D14, rowsS2D14(:), columnsS2D14(:));
[clusterArrayS2D15] = getSpectralCurveArray(HSImageS2D15, rowsS2D15(:), columnsS2D15(:));
[clusterArrayS2D16] = getSpectralCurveArray(HSImageS2D16, rowsS2D16(:), columnsS2D16(:));
[clusterArrayS2D17] = getSpectralCurveArray(HSImageS2D17, rowsS2D17(:), columnsS2D17(:));
[clusterArrayS2D18] = getSpectralCurveArray(HSImageS2D18, rowsS2D18(:), columnsS2D18(:));
[clusterArrayS2D19] = getSpectralCurveArray(HSImageS2D19, rowsS2D19(:), columnsS2D19(:));
[clusterArrayS2D20] = getSpectralCurveArray(HSImageS2D20, rowsS2D20(:), columnsS2D20(:));
[clusterArrayS2D21] = getSpectralCurveArray(HSImageS2D21, rowsS2D21(:), columnsS2D21(:));
[clusterArrayS2D22] = getSpectralCurveArray(HSImageS2D22, rowsS2D22(:), columnsS2D22(:));
[clusterArrayS2D23] = getSpectralCurveArray(HSImageS2D23, rowsS2D23(:), columnsS2D23(:));
[clusterArrayS2D24] = getSpectralCurveArray(HSImageS2D24, rowsS2D24(:), columnsS2D24(:));
[clusterArrayS2D25] = getSpectralCurveArray(HSImageS2D25, rowsS2D25(:), columnsS2D25(:));
[clusterArrayS2D26] = getSpectralCurveArray(HSImageS2D26, rowsS2D26(:), columnsS2D26(:));
[clusterArrayS2D27] = getSpectralCurveArray(HSImageS2D27, rowsS2D27(:), columnsS2D27(:));
[clusterArrayS2D28] = getSpectralCurveArray(HSImageS2D28, rowsS2D28(:), columnsS2D28(:));

    % transposing the cluster arrays
clusterArrayS2D1 = clusterArrayS2D1.';
clusterArrayS2D2 = clusterArrayS2D2.';
clusterArrayS2D3 = clusterArrayS2D3.';
clusterArrayS2D4 = clusterArrayS2D4.';
clusterArrayS2D5 = clusterArrayS2D5.';
clusterArrayS2D6 = clusterArrayS2D6.';
clusterArrayS2D7 = clusterArrayS2D7.';
clusterArrayS2D8 = clusterArrayS2D8.';
clusterArrayS2D9 = clusterArrayS2D9.';
clusterArrayS2D10 = clusterArrayS2D10.';
clusterArrayS2D11 = clusterArrayS2D11.';
clusterArrayS2D12 = clusterArrayS2D12.';
clusterArrayS2D13 = clusterArrayS2D13.';
clusterArrayS2D14 = clusterArrayS2D14.';
clusterArrayS2D15 = clusterArrayS2D15.';
clusterArrayS2D16 = clusterArrayS2D16.';
clusterArrayS2D17 = clusterArrayS2D17.';
clusterArrayS2D18 = clusterArrayS2D18.';
clusterArrayS2D19 = clusterArrayS2D19.';
clusterArrayS2D20 = clusterArrayS2D20.';
clusterArrayS2D21 = clusterArrayS2D21.';
clusterArrayS2D22 = clusterArrayS2D22.';
clusterArrayS2D23 = clusterArrayS2D23.';
clusterArrayS2D24 = clusterArrayS2D24.';
clusterArrayS2D25 = clusterArrayS2D25.';
clusterArrayS2D26 = clusterArrayS2D26.';
clusterArrayS2D27 = clusterArrayS2D27.';
clusterArrayS2D28 = clusterArrayS2D28.';

    % create output matrix where stress is first then control
outputMatrix = ones(...
    size(clusterArrayS2D26,1) + ...
    size(clusterArrayS2D27,1) + ...
    size(clusterArrayS2D28,1) + ...
    size(clusterArrayS2D1,1) + ...
    size(clusterArrayS2D2,1) + ...
    size(clusterArrayS2D3,1) + ...
    size(clusterArrayS2D4,1) + ...
    size(clusterArrayS2D5,1) + ...
    size(clusterArrayS2D6,1) + ...
    size(clusterArrayS2D7,1) + ...
    size(clusterArrayS2D8,1) + ...
    size(clusterArrayS2D9,1) + ...
    size(clusterArrayS2D10,1) + ...
    size(clusterArrayS2D11,1) + ...
    size(clusterArrayS2D12,1) + ...
    size(clusterArrayS2D13,1) + ...
    size(clusterArrayS2D14,1) + ...
    size(clusterArrayS2D15,1) + ...
    size(clusterArrayS2D16,1) + ...
    size(clusterArrayS2D17,1) + ...
    size(clusterArrayS2D18,1) + ...
    size(clusterArrayS2D19,1) + ...
    size(clusterArrayS2D20,1) ...
    , 1);
outputMatrix(size(clusterArrayS2D26,1) + ...
    size(clusterArrayS2D27,1) + ...
    size(clusterArrayS2D28,1)+1:end) = 0;
 
    % create feature matrix
featuresMatrix = vertcat(...
    clusterArrayS2D26, clusterArrayS2D27, clusterArrayS2D28, ...
    clusterArrayS2D1, clusterArrayS2D2, clusterArrayS2D3, ...
    clusterArrayS2D4, clusterArrayS2D5, clusterArrayS2D6, ...
    clusterArrayS2D7, clusterArrayS2D8, clusterArrayS2D9, ...
    clusterArrayS2D10, clusterArrayS2D1, clusterArrayS2D12, ...
    clusterArrayS2D13, clusterArrayS2D14, clusterArrayS2D15, ...
    clusterArrayS2D16, clusterArrayS2D17, clusterArrayS2D18, ...
    clusterArrayS2D19, clusterArrayS2D20 ...
     );
 
 
 
 
 
 
 