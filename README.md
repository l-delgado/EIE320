Realizado por [Leandro Delgado](https://instagram.com/leandrodelgadoa/).
## Código MatLab
--------------
#### Código que permita graficar las funciones rotacional y gradiente.
```markdown
%Código que permite graficar las funciones rotacional y gradiente.
%LD

%Gradiente 
clc
syms x y z
prompt = 'Ingrese funcion para gradiente: ' ;
f=input(prompt);
prompt = 'Ingrese componente i del vector para rotacional: ' ;
x_in=input(prompt);
prompt = 'Ingrese componente j del vector para rotacional: ' ;
y_in=input(prompt);
prompt = 'Ingrese componente k del vector para rotacional: ' ;
z_in=input(prompt);

%figura de la funcion
    figure(1)
    fsurf(f,[-2,2,-2,2])
xlabel('x');ylabel('y');
title(sprintf(['función =   %s'],f))
hold off
    
g=gradient(f, [x,y]);

figure(2) % Grafica del gradiente
[X,Y] = meshgrid(-2:.4:2,-2:.4:2);
G1=subs(g(1),[x,y],{X,Y});
G2=subs(g(2),[x,y],{X,Y});
fcontour(f, [-2.2 ,2.2 ,-2.2 ,2.2],'k','Fill','on','LineWidth',1)
hold on;

h=quiver(X,Y,G1,G2,1);
set(h, 'color',[0 0 1],'linewidth',2);
hold on
xlabel('ix');ylabel('iy');
title(sprintf(['Gradiente = i [%s]+j [%s]\n'],g(1),g(2)))
fprintf('\nCampo de gradiente = i[%s]+j[%s]\n', g(1),g(2))
hold off

%Rotacional

V = [x_in,y_in,z_in];

figure(3) % grafica del campo
[X,Y] = meshgrid (-5:.5:5,-5:.5:5);
F1=subs(x_in, [x y],{X,Y});
F2=subs(y_in, [x y],{X,Y} );
set(gcf,'units','normalized','position',[0.6 0.2 0.35 0.4]);
quiver(X,Y,F1,F2,2,'color',[0 0 1], 'linewidth',2)
shading flat
hold on
xlabel('ix');ylabel('jy');
title(sprintf(['Campo vectorial= i [%s]+j [%s] + k [%s]\n'],V(1),V(2), V(3)))
hold off

X= [x y z];
rot= curl(V,X);
figure(4)% grafica del rotacional
fsurf(rot)
xlabel('ix');ylabel('jy');zlabel('kz');
title(sprintf(['Rotacional = i [%s]+j [%s] + k [%s]\n'],rot(1),rot(2), rot(3)))
```

#### Código que permite graficar las funciones senso, coseno y tangente. Todas las variables definidas antes de usar la función trigonométrica.
```markdown
%funciones trigonometricas
clc, close all , close all
T=2*pi; %Periodo de 0.5 segundos
f= 1/T; %frecuencia de 1/T
t=0:1/(f*32):4*pi;%Tiempo desde o a 1 con paso fraccionario de 1/100
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
```


#### Código que transforma de dB a veces, en ambas direcciones.
```markdown
clc, close all 
%Decibeles a veces
dB=input('Ingrese Decibel\n') % entrada 
%dB=10*log(veces)despejando
veces=10^((1/10)*dB); %depejando la variable
fprintf(' Transformacion A veces es = %f',veces) %salida
```



