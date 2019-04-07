frameLeftGray  = rgb2gray(data1);
frameRightGray = rgb2gray(data2);
    
disparityMap = disparitySGM(frameLeftGray, frameRightGray);
figure;
imshow(disparityMap, [0, 64]);
title('Disparity Map');
colormap jet
colorbar