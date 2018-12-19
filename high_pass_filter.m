image1=imread('C:\Users\Student\Desktop\lena.jpg');
gray_image1=rgb2gray(image1);
subplot(3,3,1)
imshow(gray_image1);
gray_image1=double(gray_image1);
[r,c]=size(gray_image1);
hpf_mask=(1/9)*[-1 -1 -1;-1 8 -1;-1 -1 -1];
for i=2:r-1
    for j=2:c-1
       filter_image(i-1,j-1)=sum(sum(hpf_mask.*(gray_image1(i-1:i+1,j-1:j+1))));
    end
end
subplot(3,3,2)
imshow(uint8(filter_image));
