%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
% 6MIN 30SEC to finish script
% change only k value
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% combining all tables
[num,txt,raw2] = xlsread('2clusters_totalSumOfSquares.xlsx'); % only need raw
[num,txt,raw3] = xlsread('3clusters_totalSumOfSquares.xlsx'); % only need raw
[num,txt,raw4] = xlsread('4clusters_totalSumOfSquares.xlsx'); % only need raw
[num,txt,raw5] = xlsread('5clusters_totalSumOfSquares.xlsx'); % only need raw
[num,txt,raw6] = xlsread('6clusters_totalSumOfSquares.xlsx'); % only need raw
raw2Matrix = raw2;
raw3Matrix = raw3;
raw4Matrix = raw4;
raw5Matrix = raw5;
raw6Matrix = raw6;
T2 = cell2table(raw2Matrix(1:end, :));
T3 = cell2table(raw3Matrix(1:end, :));
T4 = cell2table(raw4Matrix(1:end, :));
T5 = cell2table(raw5Matrix(1:end, :));
T6 = cell2table(raw6Matrix(1:end, :));
filename = 'allClusters.xlsx';
writetable(T2,filename,'Sheet',1,'Range','A1','WriteVariableNames',false);
writetable(T3,filename,'Sheet',2,'Range','A1','WriteVariableNames',false);
writetable(T4,filename,'Sheet',3,'Range','A1','WriteVariableNames',false);
writetable(T5,filename,'Sheet',4,'Range','A1','WriteVariableNames',false);
writetable(T6,filename,'Sheet',5,'Range','A1','WriteVariableNames',false);
%%%
