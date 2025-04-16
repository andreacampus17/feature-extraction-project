% Carica l'immagine
img = imread('Grammichele.jpg');
grayImg = rgb2gray(img);  % Converting the image in grayscale format



% Border Dectection
edges = edge(grayImg, 'canny',[0.3, 0.7]);

% Computing Houg Transform
[H, T, R] = hough(edges);


% Trova i picchi nella trasformata di Hough

%Finding maximum values in the Houg transform
P = houghpeaks(H, 100, 'threshold', ceil(0.42 * max(H(:))));


% Finding the lines from the Hough Transform
lines = houghlines(edges, T, R, P, 'FillGap', 100, 'MinLength', 10);


figure, imshow(img), hold on;
max_len = 0;

% Disegna le linee rilevate
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:, 1), xy(:, 2), 'LineWidth', 2, 'Color', 'green');
   
   % Determina i punti finali della linea più lunga
   len = norm(lines(k).point1 - lines(k).point2);
   if len > max_len
      max_len = len;
      xy_long = xy;
   end
   
end



