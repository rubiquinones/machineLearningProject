%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% reads in a hyperspectral image and stores the data
% iterate through the folder to find 244 images 
% ignoring the 2nd image, aka 1_0_0.png. It is a README.png

function [outputImage] = readHSImages(folder_path)
    
    filePattern = fullfile(folder_path, '*.png');
    f = dir(filePattern);
    files = {f.name};
    numberOfFiles = numel(files);
    
    temp = imread([folder_path '/0_0_0.png']); % needed to compute dimension size
    dimension = size(temp);
    outputImage = ones(dimension(1),dimension(2)); % initializing
    
    for k=1:numberOfFiles
        % i is used since matrices do not start at 0, 
        %so another variables is needed to iterate through images that do start with 0
        i = k-1; 
        
        if (i==1) 
            % do nothing, ignoring the README.png
        else
            img = imread([folder_path '/' num2str(i) '_0_0.png']);
            band = img(:,:,1); % extacting first band in temp
            outputImage = cat(3, outputImage, band);
        end
    end
    
    outputImage(:,:,1) = []; % remove the initialization layer
end





