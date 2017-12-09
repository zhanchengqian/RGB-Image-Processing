function [ ] =  ImageTest( pic )

img = imread(pic); % Read image
red = img(:,:,1); % Red channel
green = img(:,:,2); % Green channel
blue = img(:,:,3); % Blue channel
%Cite: https://www.mathworks.com/matlabcentral/answers/91036-split-an-color-image-to-its-3-rgb-channels

a = zeros(size(img, 1), size(img, 2));

red8 = im2uint8(red);
green8 = im2uint8(green);
blue8 = im2uint8(blue);
figure, imshow(img), title('Original image')

figure, imshow(red8), title('Red channel')
figure, imshow(green8), title('Green channel')
figure, imshow(blue8), title('Blue channel')
 
imwrite(red8,'TestRed.jpg')
imwrite(green8,'TestGreen.jpg')
imwrite(blue8,'TestBlue.jpg')

Rmin = min(red(:));
Gmin = min(green(:));
Bmin = min(blue(:));

Rmax = max(red(:));
Gmax = max(green(:));
Bmax = max(blue(:));

fprintf('Image size: %d x %d\n',size(img,1),size(img,2));
fprintf('Min, max R values: %d %d\n',Rmin,Rmax);
fprintf('Min, max G values: %d %d\n',Gmin,Gmax);
fprintf('Min, max B values: %d %d\n',Bmin,Bmax);
fprintf('Averages: %6.1f %6.1f %6.1f\n',mean2(red(:)),mean2(green(:)),mean2(blue(:)));

end

