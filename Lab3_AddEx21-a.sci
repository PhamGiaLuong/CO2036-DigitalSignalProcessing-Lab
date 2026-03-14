n = -5:5;
xn = zeros(1, length(n));
xn(n==-2) = 1/3;
xn(n==-1) = 2/3;
xn(n>=0 & n<=3) = 1;

scf();
plot2d3(n, xn, style=2);
plot2d(n, xn, style=-5);
xgrid()
title('Signal x(n)');
xlabel('n'); ylabel('Amplitude');
