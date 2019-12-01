clc;
close all;
clear all;
source='C:/Users/Panagiotis Prattis/Desktop/matlabtests/airplane.MOV';
vidobj=VideoReader(source);
frames=vidobj.Numberofframes;
for f=1:frames
  thisframe=read(vidobj,f);
  figure(1);imagesc(thisframe);
  thisfile=sprintf('C:/Users/Panagiotis Prattis/Desktop/matlabtests/frame_%04d.jpg',f);
  imwrite(thisframe,thisfile);
end