%numX y denX son el numerador y denominador respectivamente de las 
%funciones de transferencia

%-----------------------------------------------------------%
%Función de transferencia para ec. de 1° grado
%H(s) = (8s) / (6s + 2)
num1 = [8 0];
den1 = [6 2];
figure
%Step grafica la respuesta del sistema
step (num1 , den1)
title('Respuesta lazo abierto ecuación 1° grado'); 
grid on;

%Cloop modifica h(s) para que pase de un sistema abierto a uno cerrado
[num2 , den2 ] = cloop (num1 , den1);
figure
step (num2 , den2)
title('Respuesta lazo cerrado ecuación 1° grado'); 
grid on;

%tf genera una función de transferencia juntando el numerador y denominador
%de una función de transferencia.
h1 = tf(num1,den1);
%stepinfo entrega información adicional de la respuesta del sistema. Lo
%que se utilizará en este caso será el tiempo de estabilización.
stepinfo(h1)
%La función tf2zp con el numerador y denominador de H(s) obtiene sus
%ceros,polos y ganancia.
[zero,pole,ganancy] = tf2zp(num1,den1);


%-----------------------------------------------------------%
%Función de transferencia para ec. de 2° grado
%H(s) = (5s**2 +7s +4) / (s**2 + 6s + 3)
num3 = [5 7 4];
den3 = [1 6 3];
figure
%Step grafica la respuesta del sistema
step (num3 , den3)  
title('Respuesta lazo abierto ecuación 2° grado'); 
grid on;

%Cloop modifica h(s) para que pase de un sistema abierto a uno cerrado
[num4 , den4 ] = cloop (num3 , den3);
figure
step (num4 , den4)
title('Respuesta lazo cerrado ecuación 2° grado'); 
grid on;

%tf genera una función de transferencia juntando el numerador y denominador
%de una función de transferencia.
h2 = tf(num3,den3);
%stepinfo entrega información adicional de la respuesta del sistema. Lo
%que se utilizará en este caso será el tiempo de estabilización.
stepinfo(h2)
%La función tf2zp con el numerador y denominador de H(s) obtiene sus
%ceros,polos y ganancia.
[zero2,pol2,ganancy2] = tf2zp(num3,den3);


%-----------------------------------------------------------%

%Función de transferencia para ec. de 3° grado
%H(s) = (2) / (s**3 + 4)
num5 = [0 0 0 2];
den5 = [1 0 0 4];
figure
%Step grafica la respuesta del sistema
step (num5 , den5)
title('Respuesta lazo abierto ecuación 3° grado'); 
grid on;

%Cloop modifica h(s) para que pase de un sistema abierto a uno cerrado
[num6 , den6 ] = cloop (num5 , den5);
figure
step (num6 , den6)
title('Respuesta lazo cerrado ecuación 3° grado'); 
grid on;

%tf genera una función de transferencia juntando el numerador y denominador
%de una función de transferencia.
h3 = tf(num5,den5);
%stepinfo entrega información adicional de la respuesta del sistema. Lo
%que se utilizará en este caso será el tiempo de estabilización.
stepinfo(h3)
%La función tf2zp con el numerador y denominador de H(s) obtiene sus
%ceros,polos y ganancia.
[zero3,pole3,ganancy3] = tf2zp(num5,den5);