%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [] = kMeansClustering(plantIndex, timestamp, k)

    NIRPath = strcat ('images/input/6-13-17cotton/', plantIndex );
    NIRPath = strcat (NIRPath, '/' );
    NIRPath = strcat (NIRPath, timestamp );
    NIRPath = strcat (NIRPath, '/47_0_0.png' );
    
    VISPath = strcat ('images/input/6-13-17cotton/', plantIndex );
    VISPath = strcat (VISPath, '/' );
    VISPath = strcat (VISPath, timestamp );
    VISPath = strcat (VISPath, '/29_0_0.png' );
    
    NIR = imread(NIRPath);
    VIS = imread(VISPath);

    subtraction = 2*NIR(:,:,2) - 2*VIS(:,:,2);
    binarization = imbinarize(subtraction);
    overlay = labeloverlay(NIR,binarization, 'Colormap','summer');
    ab = subtraction;
    nrows = size(ab, 1);
    ncols = size(ab, 2);
    ab = reshape(ab, nrows*ncols,1);
    nColors=k;
    
    [cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqeuclidean', ...
                                      'Replicates',3 );
                                 
    pixel_labels = reshape(cluster_idx,nrows,ncols);
    figure;
    imshowpair(NIR, pixel_labels, 'montage');
    title('image labeled by cluster index');
    
    segmented_images = cell(1,3);
    rgb_label = repmat(pixel_labels,[1 1 3]);
    for k = 1:nColors
        color = NIR;
        color(rgb_label ~= k) = 0;
        segmented_images{k} = color;
    end
%     imshow(segmented_images{1}), title('objects in cluster 1');
%     imshow(segmented_images{2}), title('objects in cluster 2');
%     imshow(segmented_images{3}), title('objects in cluster 3');

    final = segmented_images{2} - overlay(:,:,2);
    figure;
    imshowpair(NIR, final, 'montage');


end

