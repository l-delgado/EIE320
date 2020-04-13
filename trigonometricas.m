%funciones trigonometricas
clc, close all , close all
T=2*pi; %Periodo de 2 pi segundos
f= 1/T; %frecuencia de 1/T
t=0:1/(f*32):4*pi;%Tiempo desde o a 1 con paso fraccionario de 1/f*32
pha=0;
A=1; %amplitud de 1

x=A*cos(2*pi*f*t+pha);%funcion coseno
y=A*sin(2*pi*f*t+pha);%funcion seno
f1=@(t) tan(t);% @(t) significa que f1 es una funcion de t

%graficas
subplot(2,2,1) %para dividir las graficas, matriz dos por dos en el primer cuadrante
plot(t,x,'r') %comando que grafica la funcion
title('Grafica Coseno') %titulo grafica
xlabel('Tiempo')
ylabel('Amplitud')
grid on

subplot(2,2,2) %para dividir las graficas, matriz dos por dos en el primer cuadrante
plot(t,y) %comando que grafica la funcion
title('Grafica seno') %titulo grafica
xlabel('Tiempo')
ylabel('Amplitud')
grid on

subplot(2,2,3) %matriz dos por dos en el 3 cuadrante
ezplot(f1,[-2*pi,2*pi]); %ezplot (funcion,[min, max])
title('Grafica tangente') %titulo grafica
xlabel('tiempo')
ylabel('Amplitud')
grid on
