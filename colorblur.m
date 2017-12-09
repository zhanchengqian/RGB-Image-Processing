function [ output ] = colorblur( image, component, N )

img = imread(image);
blur_cha = img(:,:,component); % Blurred channel
red = img(:,:,1); % Red channel
green = img(:,:,2); % Green channel
blue = img(:,:,3); % Blue channel
%Cite: https://www.mathworks.com/matlabcentral/answers/91036-split-an-color-image-to-its-3-rgb-channels

red8 = im2uint8(red);
green8 = im2uint8(green);
blue8 = im2uint8(blue);
blur_cha8 = im2uint8(blur_cha);

k = fspecial('average', [N, N]);
blur_cha8 = imfilter(blur_cha8, k);

    if component==1
        rgbImage = cat(3, blur_cha8, green8, blue8);
    elseif component==2
        rgbImage = cat(3, red8, blur_cha8, blue8);
    elseif component==3
        rgbImage = cat(3, red8, green8, blur_cha8);
    end
    
    scrsz = get(0,'ScreenSize');
    figure,imshow(img), title('Original image')
    figure,imshow(rgbImage), title('Blurred image')
    
    output = rgbImage;
end

