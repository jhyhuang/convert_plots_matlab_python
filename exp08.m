% exp07.m

clear; close all;

N = 50;
theta = linspace(0.0, 2*pi, N);
radii = 10*rand(1,N);
width = pi/4*rand(1,N);
polarhistogram(radii,N,'BinWidth',0.2,'FaceColor','b','FaceAlpha',0.5)

