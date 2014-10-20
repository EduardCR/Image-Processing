clear;
close all;
I=imread('C:\Users\EduardoC\Documents\Uaq informatica\5to Semestre\Topico 1\Imagenes Clase\popocatepetl.jpg');

figure;
image(I);

k=.15;
c=1.3;
b=2;

E1=zeros(size(I));
E2=zeros(size(I));
 
tic
x=1:size(I,1);
x=x.*k;
x=diag(x);
one=ones(size(I,1));
x=one*x;
x=x';
x=[x,x(:,1:(size(I,2)-size(I,1)))];

for i=1:size(E1,3)
E1(:,:,i)=I(:,:,i)+x;
end

E1(find(E1>255))=255;
E1=round(E1);
E1=uint8(E1);
figure;
image(E1);
toc

E2=round((I.*c)+b);
E2(find(E2>255))=255;
E2=uint8(E2);
figure;
image(E2);