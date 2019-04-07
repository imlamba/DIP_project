

    diff_im1 = imsubtract(data1(:,:,1), rgb2gray(data1)); % subtracts the red color from the image
    %Use a median filte tFileo filter out noise
    diff_im1 = medfilt2(diff_im1, [3 3]);
    diff_im1 = im2bw(diff_im1,0.18);
    
    diff_im1 = bwareaopen(diff_im1,30);
    
    bw1 = bwlabel(diff_im1, 8);
    
    stats1 = regionprops(bw1, 'BoundingBox', 'Centroid');
    figure;
    imshow(data1)
    
    hold on
    
    for object = 1:length(stats1)
        bb1 = stats1(object).BoundingBox;
        bc1 = stats1(object).Centroid;
        rectangle('Position',bb1,'EdgeColor','r','LineWidth',2)
        plot(bc1(1),bc1(2), '-m+')
        a=text(bc1(1)+15,bc1(2), strcat('X: ', num2str(round(bc1(1))), ' Y: ', num2str(round(bc1(2)))));
        set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'blue');
    end
    
    hold off
    
    diff_im2 = imsubtract(data2(:,:,1), rgb2gray(data2)); % subtracts the red color from the image
    %Use a median filte tFileo filter out noise
    diff_im2 = medfilt2(diff_im2, [3 3]);
    diff_im2 = im2bw(diff_im2,0.18);
    
    diff_im2 = bwareaopen(diff_im2,300);
    
    bw2 = bwlabel(diff_im2, 8);
    
    stats2 = regionprops(bw2, 'BoundingBox', 'Centroid');
    % Display the image
    figure;
    imshow(data2) % displays the image with the detected colors
    
    hold on
   
     for object = 1:length(stats2)
        bb2 = stats2(object).BoundingBox;
        bc2 = stats2(object).Centroid;
        rectangle('Position',bb2,'EdgeColor','r','LineWidth',2)
        plot(bc2(1),bc2(2), '-m+')
        a=text(bc2(1)+15,bc2(2), strcat('X: ', num2str(round(bc2(1))), ' Y: ', num2str(round(bc2(2)))));
        set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'blue');
    end
    
    hold off
    
    disp('distance = ');
    dist = (6.7*880)/((bc1(1) - bc2(1)));
    disp(abs(dist));
    
