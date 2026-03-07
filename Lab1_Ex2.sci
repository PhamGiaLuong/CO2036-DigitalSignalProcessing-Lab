// 1. Analog signal xa(t)
T = 0.02;
t = 0:0.0001:(5*T); 
xa = 3 * sin(100 * %pi * t);

// 2 & 3. Discrete-time signal x(n)
n = 0:30; 
xn = 3 * sin(%pi * n / 3);

// 4. Quantized signal xq(n)
delta = 0.1;
xq = delta * floor(xn / delta);

subplot(3,1,1);
plot(t, xa); xgrid();
title("Analog signal xa(t)", "fontsize", 3);
xlabel("t (s)"); ylabel("Amplitude");

subplot(3,1,2);
plot2d3(n, xn, style=2);
 plot2d(n, xn, style=-9); xgrid();
title("Discrete-time signal x(n)", "fontsize", 3);
xlabel("n (samples)"); ylabel("Amplitude");

subplot(3,1,3);
plot2d3(n, xq, style=5); 
plot2d(n, xq, style=-9); xgrid();
title("Quantized signal xq(n) (truncated method)", "fontsize", 3);
xlabel("n (samples)"); ylabel("Amplitude");
