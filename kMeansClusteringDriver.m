%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Created by: Rubi Quinones
% rubi.quinones01@gmail.com
% 956-270-0385
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

%E2: P1 control, 11 July, band 122
he = imread('images/input/6-13-17cotton/613-181-01/2017-07-11_07-03-13_2041000/122_0_0.png');
%E2: P2 stressed, 11 July, band 122
%he = imread('images/input/6-13-17cotton/613-182-02/2017-07-11_07-01-04_2040900/122_0_0.png');

lab_he = rgb2lab(he); % convert to L*a*b* color space

ab = lab_he(:,:, 2:3);
nrows = size(ab, 1);
ncols = size(ab, 2);
ab = reshape(ab, nrows*ncols,2);
nColors=3;
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean', ...
                                      'Replicates',3);
                                 
pixel_labels = reshape(cluster_idx,nrows,ncols);
imshow(pixel_labels,[]), title('image labeled by cluster index');

segmented_images = cell(1,3);
rgb_label = repmat(pixel_labels,[1 1 3]);
for k = 1:nColors
    color = he;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end
imshow(segmented_images{1}), title('objects in cluster 1');
imshow(segmented_images{2}), title('objects in cluster 2');
imshow(segmented_images{3}), title('objects in cluster 3');


