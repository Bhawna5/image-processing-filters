image1=imread('C:\Users\Student\Desktop\lena.jpg');
gray_image1=rgb2gray(image1);
negative_image=255-gray_image1;
imshow(gray_image1);
figure;imshow(negative_image);
