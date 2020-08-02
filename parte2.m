% Generar diagrama a partir de las siguientes funciones:


n1 = [0 0 4 0];
d1 = [0 10 0 4];
f1 = step(n1,d1);
%ft1 = tf(n1,d1);

n2 = [0 0 0 3];
d2 =[0 0 6 16];
f2 = step(n1,d2);
%ft2 = tf(n2, d2);

[n3, d3] =cloop([0 0 4 10], [4 9 5 0]);
f3 = step(n3, d3);
ft3 = tf(n3,d3)

n4 = [0 0 0 1];
d4 = [0 0 7 10];
%ft4 = tf(n4, d4);

n5 = [0 0 8 8];
d5 = [1 2 3 0];
%ft5 = tf(n5,d5);

[n45,d45] = parallel(n4, d4, n5, d5);
%ft45 = tf(n45, d45);

n6 = [0 0 3 2];
d6 = [0 5 7 10];
%ft6 = tf(n6,d6);

[n345, d345] = series(n3, d3, n45, d45);
[n3456, d3456] = series(n345, d345, n6, d6);

% Finalmente:
[n12, d12] = parallel(n1, d1, n2, d2);
[n123456, d123456] = parallel(n12, d12, n3456, d3456);

grafico = step(n123456, d123456, 10);
