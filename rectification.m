cam2 = webcam(2);
cam3 = webcam(3)
data1=snapshot(cam2);
data2=snapshot(cam3);
figure;
subplot(1,2,1);
imshow(data1)
subplot(1,2,2);
imshow(data2);
[data1, data2] = rectifyStereoImages(data2, data1, stereoParams);
figure;
subplot(1,2,1);
imshow(data1)
subplot(1,2,2);
imshow(data2);