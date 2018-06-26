%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
% 6MIN 30SEC to finish script
% change only k value
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Band1 to Band244 == 540nm to 1755nm 
%every hyperspectral image is 5 nm
%NDVI = (NIR - VIS) / (NIR + VIS)
% 770nm = NIR
% 680nm = VIS

clear all;

k = 2; % number of clusters
topLevelFolder = 'images/input/6-13-17cotton';
filePattern = sprintf('%s/*/', topLevelFolder);
topLevelFolderInfo = dir(filePattern);
fields = fieldnames(topLevelFolderInfo);
plantIndexMatrix = [];
totalSumdMatrix = [];
timestampMatrix = [];
c1cMatrix = []; % clusterNCount
c2cMatrix = [];
c3cMatrix = [];
c4cMatrix = [];
c5cMatrix = [];
c6cMatrix = [];

j = 1; % mod counter 
counter = 1; % pointer to row in topLevelFolderInfo
for i=1:numel(topLevelFolderInfo) - 1
    
    if mod(j,33) ~= 0  % as long as not hitting next folder 
            
            timestamp = topLevelFolderInfo(counter).name;
            if isequal(timestamp, '.') == true
                counter = counter + 1;
                timestamp = topLevelFolderInfo(counter).name;
            end
            if isequal(timestamp, '..') == true
                counter = counter + 1;
                timestamp = topLevelFolderInfo(counter).name;
            end
            if isequal(timestamp, '.DS_Store') == true
                counter = counter + 1;
                timestamp = topLevelFolderInfo(counter).name;
            end
            
            subFolder = topLevelFolderInfo(counter).folder;
            plantIndex = extractAfter(subFolder,"6-13-17cotton/");

            [sumd, c1c, c2c, c3c, c4c, c5c, c6c] = kMeansClustering(plantIndex, timestamp, k);
            plantIndexMatrix = [plantIndexMatrix; plantIndex];
            timestampMatrix = [timestampMatrix; timestamp];
            totalSumdMatrix = [totalSumdMatrix; sum(sumd(:))];
            c1cMatrix = [c1cMatrix; c1c];
            c2cMatrix = [c2cMatrix; c2c];
            c3cMatrix = [c3cMatrix; c3c];
            c4cMatrix = [c4cMatrix; c4c];
            c5cMatrix = [c5cMatrix; c5c];
            c6cMatrix = [c6cMatrix; c6c];
       
            j=j+1; 
            counter = counter +1;
    else
        j=1; % reset for next folder
        counter = counter +1;
    end
    
    if counter == numel(topLevelFolderInfo)+1 % breaks once reaches end of entries
        break;
    end
    
end

% creates table
indexSumMatrix = [cellstr(plantIndexMatrix) cellstr(timestampMatrix) num2cell(totalSumdMatrix) num2cell(c1cMatrix) num2cell(c2cMatrix) num2cell(c3cMatrix) num2cell(c4cMatrix) num2cell(c5cMatrix) num2cell(c6cMatrix) ]; 
T = cell2table(indexSumMatrix(1:end, :));
T.Properties.VariableNames = {'Plant_Index','Timestamp', 'Best_Total_Sum_Of_Squares', 'Cluster_1_Count', 'Cluster_2_Count', 'Cluster_3_Count', 'Cluster_4_Count', 'Cluster_5_Count', 'Cluster_6_Count'}; % underscores are needed
filename = [num2str(k) 'clusters_totalSumOfSquares.xlsx'];
writetable(T, filename);
%%%




