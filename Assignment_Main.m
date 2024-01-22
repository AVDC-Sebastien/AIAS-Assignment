%/////////////////////////////////////////////////////////////////////////%
%                                                                         %
%   - Name : Assignment_Main.m                                            %
%   - Implementation of mean shift clustering algorithm                   %
%                                                                         %
%                               - Created by S. Lambert, 19/01/2024       %
%                                                                         %
%/////////////////////////////////////////////////////////////////////////%

%.. Matlab setup

    close all; clc;

%.. Code

I = imread("Assignment data\data\images\test\2018.jpg");
I = im2double(I);
img = hsv2rgb(I);


bandWidth = 2;
size(img)
size(img(:,:,1))
[clustCent,data2cluster,cluster2dataCell] = MeanShiftCluster(img(:,:,1),bandWidth);

size(clustCent)
size(data2cluster)    
size(cluster2dataCell)

 image(data2cluster)



% image(groundTruth{1,1}.Segmentation)
% colorbar

