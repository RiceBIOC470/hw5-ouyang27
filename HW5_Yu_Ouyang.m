%HW5

% Note. You can use the code readIlastikFile.m provided in the repository to read the output from
% ilastik into MATLAB.

%% Problem 1. Starting with Ilastik

% Part 1. Use Ilastik to perform a segmentation of the image stemcells.tif
% in this folder. Be conservative about what you call background - i.e.
% don't mark something as background unless you are sure it is background.
% Output your mask into your repository. What is the main problem with your segmentation?  

% Yu Ouyang: Some cells are aligned together and cannot separate them as they attach
% to each other, especially on the top right region. 

% Part 2. Read you segmentation mask from Part 1 into MATLAB and use
% whatever methods you can to try to improve it. 

mask = readIlastikFile('Simple Segmentation1.h5');
mask = imopen(mask, strel('disk',5));
imshow(mask,[])

% Part 3. Redo part 1 but now be more aggresive in defining the background.
% Try your best to use ilastik to separate cells that are touching. Output
% the resulting mask into the repository. What is the problem now?

% Yu Ouyang: Some nuclei disappeared or fall into parts. There are several
% small particles in the picture

% Part 4. Read your mask from Part 3 into MATLAB and try to improve
% it as best you can.

mask = readIlastikFile('Simple Segmentation1.h5');
mask = imopen(mask, strel('disk',5));
mask = imclose(mask, strel('disk',5));
imshow(mask,[]);


%% Problem 2. Segmentation problems.

% The folder segmentationData has 4 very different images. Use
% whatever tools you like to try to segement the objects the best you can. Put your code and
% output masks in the repository. If you use Ilastik as an intermediate
% step put the output from ilastik in your repository as well as an .h5
% file. Put code here that will allow for viewing of each image together
% with your final segmentation. 

img1 = readIlastikFile('bacteria_Simple Segmentation.h5');
img1 = imopen(img1, strel('disk',5));
img1 = imclose(img1, strel('disk',5));
img2 = readIlastikFile('cellPhaseContrast_Simple Segmentation.h5');
img2 = imopen(img2, strel('disk',5));
img2 = imclose(img2, strel('disk',5));
img3 = readIlastikFile('worms_Simple Segmentation.h5');
img3 = imopen(img3, strel('disk',5));
img3 = imclose(img3, strel('disk',5));
img4 = readIlastikFile('yeast_Simple Segmentation.h5');
img4 = imopen(img4, strel('disk',5));
img4 = imclose(img4, strel('disk',5));
figure;
subplot(2,2,1);imshow(img1,[]);
subplot(2,2,2);imshow(img2,[]);
subplot(2,2,3);imshow(img3,[]);
subplot(2,2,4);imshow(img4,[]);

% error in readIlastikFile: subscripted assignment dimension mismatch



