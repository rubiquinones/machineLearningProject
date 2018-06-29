%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
% 14min 30SEC to run script
% change only k value
% short version that processes certain folders
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Band1 to Band244 == 540nm to 1755nm 
%every hyperspectral image is 5 nm
%NDVI = (NIR - VIS) / (NIR + VIS)
% 770nm = NIR
% 680nm = VIS
    
clear all;

% initialize matrices for writing data to table
k = 4; % number of clusters
plantIndexMatrix = [];
totalSumdMatrix = [];
timestampMatrix = [];
c1cMatrix = []; % clusterNCount
c2cMatrix = [];
c3cMatrix = [];
c4cMatrix = [];
c5cMatrix = [];
c6cMatrix = [];
bool = true;

plantIndex = '613-181-01'; %controlled
    timestamp = '2017-07-01_07-21-31_1587700'; %Day18
    timestamp = '2017-07-11_07-03-13_2041000'; %Day28
    plantIndex = '613-182-02'; %stressed
    timestamp = '2017-06-15_05-39-38_1076500'; %Day02
    timestamp = '2017-07-01_07-18-25_1587600'; %Day18
    timestamp = '2017-07-11_07-01-04_2040900'; %Day28

while bool == true
    
    % Plant1 Day02
    plantIndex = '613-181-01'; %controlled
    timestamp = '2017-06-15_05-42-44_1076600'; %Day02
    HSImage = readHSImages(['images/input/6-13-17cotton/' plantIndex '/' timestamp]);
    [sumd, c1c, c2c, c3c, c4c, c5c, c6c] = kMeansClustering(HSImage, plantIndex, timestamp, k);
    plantIndexMatrix = [plantIndexMatrix; plantIndex];
    timestampMatrix = [timestampMatrix; timestamp];
    totalSumdMatrix = [totalSumdMatrix; sum(sumd(:))];
    c1cMatrix = [c1cMatrix; c1c];
    c2cMatrix = [c2cMatrix; c2c];
    c3cMatrix = [c3cMatrix; c3c];
    c4cMatrix = [c4cMatrix; c4c];
    c5cMatrix = [c5cMatrix; c5c];
    c6cMatrix = [c6cMatrix; c6c];
    
    % Plant1 Day18
    plantIndex = '613-181-01'; %controlled
    timestamp = '2017-07-01_07-21-31_1587700'; %Day18
    HSImage = readHSImages(['images/input/6-13-17cotton/' plantIndex '/' timestamp]);
    [sumd, c1c, c2c, c3c, c4c, c5c, c6c] = kMeansClustering(HSImage, plantIndex, timestamp, k);
    plantIndexMatrix = [plantIndexMatrix; plantIndex];
    timestampMatrix = [timestampMatrix; timestamp];
    totalSumdMatrix = [totalSumdMatrix; sum(sumd(:))];
    c1cMatrix = [c1cMatrix; c1c];
    c2cMatrix = [c2cMatrix; c2c];
    c3cMatrix = [c3cMatrix; c3c];
    c4cMatrix = [c4cMatrix; c4c];
    c5cMatrix = [c5cMatrix; c5c];
    c6cMatrix = [c6cMatrix; c6c];
    
    %Plant 1 Day28
    plantIndex = '613-181-01'; %controlled
    timestamp = '2017-07-11_07-03-13_2041000'; %Day28
    HSImage = readHSImages(['images/input/6-13-17cotton/' plantIndex '/' timestamp]);
    [sumd, c1c, c2c, c3c, c4c, c5c, c6c] = kMeansClustering(HSImage, plantIndex, timestamp, k);
    plantIndexMatrix = [plantIndexMatrix; plantIndex];
    timestampMatrix = [timestampMatrix; timestamp];
    totalSumdMatrix = [totalSumdMatrix; sum(sumd(:))];
    c1cMatrix = [c1cMatrix; c1c];
    c2cMatrix = [c2cMatrix; c2c];
    c3cMatrix = [c3cMatrix; c3c];
    c4cMatrix = [c4cMatrix; c4c];
    c5cMatrix = [c5cMatrix; c5c];
    c6cMatrix = [c6cMatrix; c6c];
    
    %Plant 2 Day02
    plantIndex = '613-182-02'; %stressed
    timestamp = '2017-06-15_05-39-38_1076500'; %Day02
    HSImage = readHSImages(['images/input/6-13-17cotton/' plantIndex '/' timestamp]);
    [sumd, c1c, c2c, c3c, c4c, c5c, c6c] = kMeansClustering(HSImage, plantIndex, timestamp, k);
    plantIndexMatrix = [plantIndexMatrix; plantIndex];
    timestampMatrix = [timestampMatrix; timestamp];
    totalSumdMatrix = [totalSumdMatrix; sum(sumd(:))];
    c1cMatrix = [c1cMatrix; c1c];
    c2cMatrix = [c2cMatrix; c2c];
    c3cMatrix = [c3cMatrix; c3c];
    c4cMatrix = [c4cMatrix; c4c];
    c5cMatrix = [c5cMatrix; c5c];
    c6cMatrix = [c6cMatrix; c6c];
    
    %Plant 2 Day18
    plantIndex = '613-182-02'; %stressed
    timestamp = '2017-07-01_07-18-25_1587600'; %Day18
    HSImage = readHSImages(['images/input/6-13-17cotton/' plantIndex '/' timestamp]);
    [sumd, c1c, c2c, c3c, c4c, c5c, c6c] = kMeansClustering(HSImage, plantIndex, timestamp, k);
    plantIndexMatrix = [plantIndexMatrix; plantIndex];
    timestampMatrix = [timestampMatrix; timestamp];
    totalSumdMatrix = [totalSumdMatrix; sum(sumd(:))];
    c1cMatrix = [c1cMatrix; c1c];
    c2cMatrix = [c2cMatrix; c2c];
    c3cMatrix = [c3cMatrix; c3c];
    c4cMatrix = [c4cMatrix; c4c];
    c5cMatrix = [c5cMatrix; c5c];
    c6cMatrix = [c6cMatrix; c6c];
    
    %plant2 Day28
     plantIndex = '613-182-02'; %stressed
    timestamp = '2017-07-11_07-01-04_2040900'; %Day28
    HSImage = readHSImages(['images/input/6-13-17cotton/' plantIndex '/' timestamp]);
    [sumd, c1c, c2c, c3c, c4c, c5c, c6c] = kMeansClustering(HSImage, plantIndex, timestamp, k);
    plantIndexMatrix = [plantIndexMatrix; plantIndex];
    timestampMatrix = [timestampMatrix; timestamp];
    totalSumdMatrix = [totalSumdMatrix; sum(sumd(:))];
    c1cMatrix = [c1cMatrix; c1c];
    c2cMatrix = [c2cMatrix; c2c];
    c3cMatrix = [c3cMatrix; c3c];
    c4cMatrix = [c4cMatrix; c4c];
    c5cMatrix = [c5cMatrix; c5c];
    c6cMatrix = [c6cMatrix; c6c];

    bool = false;
end
    
% creates individual table
indexSumMatrix = [cellstr(plantIndexMatrix) cellstr(timestampMatrix) num2cell(totalSumdMatrix) num2cell(c1cMatrix) num2cell(c2cMatrix) num2cell(c3cMatrix) num2cell(c4cMatrix) num2cell(c5cMatrix) num2cell(c6cMatrix) ]; 
T = cell2table(indexSumMatrix(1:end, :));
T.Properties.VariableNames = {'Plant_Index','Timestamp', 'Best_Total_Sum_Of_Squares', 'Cluster_1_Count', 'Cluster_2_Count', 'Cluster_3_Count', 'Cluster_4_Count', 'Cluster_5_Count', 'Cluster_6_Count'}; % underscores are needed
filename = [num2str(k) 'clusters_totalSumOfSquares.xlsx'];
writetable(T, filename);
%%%

