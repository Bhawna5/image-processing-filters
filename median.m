image1=imread('C:\Users\Student\Desktop\lena.jpg');
gray_image1=rgb2gray(image1);
subplot(3,3,1)
imshow(gray_image1);
noisy_image=imnoise(gray_image1,'salt & pepper',0.05);
subplot(3,3,2)
imshow(noisy_image);
[r,c]=size(noisy_image);
for i=2:r-1
    for j=2:c-1
        m=noisy_image(i-1:i+1,j-1:j+1);
        s=reshape(m,[1,9]);
        l=sort(s);
        filter_image(i,j)=median(l);
    end
end
subplot(3,3,3)
imshow(filter_image);
