image=imread('C:\Users\Student\Desktop\lena.jpg');
gray_image=rgb2gray(image);
subplot(3,3,1)
imshow(gray_image1);
a=100;
b=180;
sa=40;
sb=200;
alpha=sa/a;
beta=(sb-sa)/(b-a);
gamma=(255-sb)/(255-b);
[r,c]=size(gray_image1);
for i=1:r
    for j=1:c
        if gray_image1(i,j)<100
            cs_image(i,j)=alpha*gray_image1(i,j);
        elseif gray_image1(i,j)>=a&&(gray_image1(i,j)<b)
            cs_image(i,j)=sa+beta*(gray_image(i,j)-a);
        else
            cs_image(i,j)=sb+gamma*(gray_image(i,j)-b);
        end
    end
end
subplot(3,3,2)
imshow(uint8(cs_image));

