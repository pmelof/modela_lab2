% Generar un gráfico que represente el comportamiento del sistema frente a 
% un escalón como entrada.

% -------------------------------------------------------------------------
% Definición de funciones de transferencia.

% Numerador y denominador de función 1.
n1 = [0 0 4 0];
d1 = [0 10 0 4];

% Numerador y denominador de función 2.
n2 = [0 0 0 3];
d2 =[0 0 6 16];

% Numerador y denominador de función 3.
n3 = [0 0 4 10];
d3 = [4 9 5 0];

% Numerador y denominador de función 4.
n4 = [0 0 0 1];
d4 = [0 0 7 10];

% Numerador y denominador de función 5.
n5 = [0 0 8 8];
d5 = [1 2 3 0];

% Numerador y denominador de función 6.
n6 = [0 0 3 2];
d6 = [0 5 7 10];

% -------------------------------------------------------------------------
% Conexiones de H(s)

% Función 3 con retroalimentación.
[num3, den3] = cloop(n3, d3);

%Funciones 4 y 5 en paralelo.
[num45,den45] = parallel(n4, d4, n5, d5);

% Funciones 3, 45 y 6 en serie.
[num345, den345] = series(num3, den3, num45, den45);
[num3456, den3456] = series(num345, den345, n6, d6);

% Funciones 1, 2 y 3456 en paralelo
[num12, den12] = parallel(n1, d1, n2, d2);
[num123456, den123456] = parallel(num12, den12, num3456, den3456);

% -------------------------------------------------------------------------
% Gráfico con respuesta al escalón como entrada, con un t=100.
figure
step(num123456, den123456, 100);
title('Respuesta del sistema frente a un escalón');
grid on;

