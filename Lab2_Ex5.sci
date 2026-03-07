n = -1:1;
x = [1, 3, -2];
x_fold = x($:-1:1);
xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);

// Plot x(n)
subplot(3,1,1); 
plot2d3(n, x, style=2); 
plot2d(n, x, style=-9);
xgrid();                 
title("Signal x(n)", "fontsize", 3); 
xlabel("n"); ylabel("Amplitude");
a = gca(); a.data_bounds = [-2, -3; 2, 4]; 
// Plot x_e(n)
subplot(3,1,2); 
plot2d3(n, xe, style=3);
plot2d(n, xe, style=-9); 
xgrid();
title("Even component xe(n)", "fontsize", 3); 
xlabel("n"); ylabel("Amplitude");
a = gca(); a.data_bounds = [-2, -3; 2, 4];
// Plot x_o(n)
subplot(3,1,3); 
plot2d3(n, xo, style=5);
plot2d(n, xo, style=-9); 
xgrid();
title("Odd component xo(n)", "fontsize", 3); 
xlabel("n"); ylabel("Amplitude");
a = gca(); a.data_bounds = [-2, -3; 2, 4];
