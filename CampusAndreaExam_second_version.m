% Loading image
img = imread('Grammichele.jpg');
grayImg = rgb2gray(img);  % grayscale image

% Histogram equalization
eqImg = histeq(grayImg);

% Gaussian Filter
sigma = 1.8; %1.8 sigma value
filterSize =5;  
gaussianKernel = fspecial('gaussian', filterSize, sigma);
filtered_image = imfilter(eqImg, gaussianKernel, 'replicate');

% Canny detection algorithm
edges = edge(filtered_image, 'canny', [0.506, 0.55]);

% Calcola la trasformata di Hough
[H, T, R] = hough(edges,'Theta', -90:0.1:89); 

% Trova i picchi nella trasformata di Hough

P = houghpeaks(H, 100, 'threshold', ceil(0.3455 * max(H(:)))); 


% Finding lines
lines = houghlines(edges, T, R, P, 'FillGap', 35, 'MinLength', 20);

% Showing the images
figure, imshow(img), hold on;
max_len = 0;

for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1), xy(:,2), 'LineWidth', 2, 'Color', 'green');
   
end
hold off;
