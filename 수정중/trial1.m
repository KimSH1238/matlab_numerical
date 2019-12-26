% import picture
a=imread('1.jpg');
subplot(4,3,1);
imshow(a);

% compress picture to gray chennel
abw=rgb2gray(a);
subplot(4,3,2);
imshow(abw);

% preparing various B & W filttering
ad=im2double(abw);
abw_d=cast(abw,'like',ad);
out1=log(abw_d+ad)/5;
subplot(4,3,4);
imshow(out1);

out2=log(abw_d+ad)/6;
subplot(4,3,5);
imshow(out2);

out3=log(abw_d+ad)/7;
subplot(4,3,6);
imshow(out3);

% measure edge in varius result
aed=edge(abw, 'sobel');
subplot(4,3,3);
imshow(aed);

out1_u=cast(out1,'like',abw);
aed1=edge(out1_u, 'sobel');
subplot(4,3,7);
imshow(aed1);

out2_u=cast(out2,'like',abw);
aed2=edge(out2_u, 'sobel');
subplot(4,3,8);
imshow(aed2);

out3_u=cast(out3,'like',abw);
aed3=edge(out3_u, 'sobel');
subplot(4,3,9);
imshow(aed3);

% add all edge data
a1=im2bw(aed)
a2=im2bw(aed1)
a3=im2bw(aed2)
a4=im2bw(aed3)

b1=and(aed, aed1)
b2=and(b1, aed2)
b3=and(b2, aed3)
subplot(4,3,10);
imshow(b3);