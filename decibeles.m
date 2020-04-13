clc, close all 
%Decibeles a veces
dB=input('Ingrese Decibel\n') % entrada 
%dB=10*log(veces)despejando
veces=10^((1/10)*dB); %depejando la variable
fprintf(' Transformacion A veces es = %f',veces) %salida
