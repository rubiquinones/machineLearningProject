%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [sumd] = kMeansClustering(plantIndex, timestamp, k)

    % defining NIRPath
    NIRPath = strcat ('images/input/6-13-17cotton/', plantIndex );
    NIRPath = strcat (NIRPath, '/' );
    NIRPath = strcat (NIRPath, timestamp );
    NIRPath = strcat (NIRPath, '/47_0_0.png' );
    %%%
    
    % defining VISPath
    VISPath = strcat ('images/input/6-13-17cotton/', plantIndex );
    VISPath = strcat (VISPath, '/' );
    VISPath = strcat (VISPath, timestamp );
    VISPath = strcat (VISPath, '/29_0_0.png' );
    %%%
    
    % reading paths
    NIR = imread(NIRPath);
    VIS = imread(VISPath);
    %%%

    % Computer vision technique prep for kmeans
    subtraction = 2*NIR(:,:,2) - 2*VIS(:,:,2); 
    binarization = imbinarize(subtraction);
    overlay = labeloverlay(NIR,binarization, 'Colormap','summer');
    ab = subtraction;
    nrows = size(ab, 1);
    ncols = size(ab, 2);
    ab = reshape(ab, nrows*ncols,1);
    nColors = k;
    %%%
    
    % insert 'Display', 'final' to output Best total sum of squares
    [cluster_idx, C, sumd] = kmeans(ab,nColors,'distance','sqeuclidean', ...
                                      'Replicates', 3, 'Start' , 'sample', 'Display', 'final');
    %%%
    
    % directory path to save images                              
    DirectoryPath = strcat ('images/output/6-13-17cotton/', plantIndex );
    DirectoryPath = strcat (DirectoryPath, '/' );
    DirectoryPath = strcat (DirectoryPath, timestamp );
    %%%
    
    % creating algo final
    pixel_labels = reshape(cluster_idx,nrows,ncols);
    h = figure;
    set(h, 'Visible', 'off');
    imshowpair(NIR, pixel_labels, 'montage');
    filename = ['algoFinal_' num2str(k) 'clusters.png'];
    whereToStore=fullfile(DirectoryPath,filename);
    saveas(gcf, whereToStore);
    %%%
    
    % needed for final image
    segmented_images = cell(1,3);
    rgb_label = repmat(pixel_labels,[1 1 3]);
    for k = 1:nColors
        color = NIR;
        color(rgb_label ~= k) = 0;
        segmented_images{k} = color;
    end
    %%%

    % saving final image in output folder
    final = segmented_images{1} - overlay(:,:,2);
    iptsetpref('ImshowBorder','tight'); % removes white border in png image
    h = figure;
    set(h, 'Visible', 'off');
    imshowpair(NIR, final, 'montage'); % displays NIR and final side by side
    filename = ['final_' num2str(k) 'clusters.png']; % creating file name
    whereToStore=fullfile(DirectoryPath,filename);
    saveas(gcf, whereToStore); % saving image
    %%%    
end

