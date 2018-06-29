 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [sumd, cluster1Count, cluster2Count, cluster3Count, ...
    cluster4Count, cluster5Count, cluster6Count] = ...
    kMeansClustering(HSImage, plantIndex, timestamp, k)

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
    % meant to clean out pixels that are out of range of plant height and width
    for ii=1:size(binarization,1) % height
        for jj=1:size(binarization,2) % width
            if ii <= 377
                binarization(ii,jj) = 0;
            end
            if ii >= 495
                binarization(ii,jj) = 0;
            end
            if jj <= 58
                binarization(ii,jj) = 0;
            end
            if jj >= 217
                binarization(ii,jj) = 0;
            end
        end
    end
    %%%

    % extract only plant pixels from binary image
    [rows, columns] = find(binarization == 1);
    % get spectral curve of points
    [clusterArray] = getSpectralCurveArray(HSImage, rows(:), columns(:));
    % prepare for kmeans
    ab = clusterArray;
    nrows = size(ab, 1);
    ncols = size(ab, 2);
    ab = reshape(ab, nrows*ncols,1);
    nColors = k;
    
    % insert 'Display', 'final' to output Best total sum of squares
    [cluster_idx, C, sumd] = kmeans(ab, nColors, 'distance', 'sqeuclidean', 'Replicates', 3, 'Display', 'final');
    %%%
    
    % directory path to save images                              
    DirectoryPath = strcat ('images/output/6-13-17cotton/', plantIndex );
    DirectoryPath = strcat (DirectoryPath, '/' );
    DirectoryPath = strcat (DirectoryPath, timestamp );
    %%%
    
    % creating clustering final picture
    pixel_labels = reshape(cluster_idx,nrows,ncols); % converts back to n x p
    for c=1:size(pixel_labels,2) %7928 % converts back to HSImage
        for d=1:size(pixel_labels,1)
                if (pixel_labels(d,c) == 1) % if labeled as cluster 1
                    HSImage(rows(c),columns(c), d) = 255; % assign it white
                end
                if (pixel_labels(d,c) == 2)
                    HSImage(rows(c),columns(c), d) = 127; % assign it gray
                end
                if (pixel_labels(d,c) == 3)
                    HSImage(rows(c),columns(c), d) = 0; % assign it black
                end
                if (pixel_labels(d,c) == 4)
                    HSImage(rows(c),columns(c), d) = 63; % assign it semi gray
                end
                if (pixel_labels(d,c) == 5)
                    HSImage(rows(c),columns(c), d) = 190; % assign it semi blag
                end
                if (pixel_labels(d,c) == 6)
                    HSImage(rows(c),columns(c), d) = 222; % assign it black
                end
                
        end
    end
    
    for band=1:244
        h = figure;
        set(h, 'Visible', 'off');
        imshow(HSImage(:,:,band));
        filename = ['clusteringFinal_' num2str(k) 'clusters_band' num2str(band) '.png'];
        whereToStore=fullfile(DirectoryPath,filename);
        saveas(h, whereToStore);
    end
    %%%
    
    % extracting pixel count
    cluster1Count = sum(pixel_labels(:) == 1);
    cluster2Count = sum(pixel_labels(:) == 2);
    cluster3Count = sum(pixel_labels(:) == 3);
    cluster4Count = sum(pixel_labels(:) == 4);
    cluster5Count = sum(pixel_labels(:) == 5);
    cluster6Count = sum(pixel_labels(:) == 6);
    %%%
end

