// Load the IPCV module
atomsLoad('IPCV');

// Read the input image from the specified path
img = imread('D:\HCMUT\HK252\CO2035-DigitalSignalProcessing\Week3\Scilab-src\LogoBachkhoa.png');

// Convert the RGB image to Grayscale
gray_img = rgb2gray(img);

// Perform Histogram Equalization
eq_img = imhistequal(gray_img);

// Display the original grayscale and the equalized images
scf(0);
subplot(1,2,1);
imshow(gray_img);
title('Original Grayscale Image');

subplot(1,2,2);
imshow(eq_img);
title('Histogram Equalized Image');

// Display the histograms of both images
scf(1);
subplot(1,2,1);
imhist(gray_img);
title('Histogram of Original Image');

subplot(1,2,2);
imhist(eq_img);
title('Histogram of Equalized Image');
