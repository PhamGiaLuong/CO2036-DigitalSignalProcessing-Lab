n = -5:3;
y = [0.5, 0, 1 - 0.5*%i, 2, 1 + 2*%i, 0, 0.5 - 2*%i, 0, 0.5*%i];

scf(1); clf;
// Plot Real part of y(n)
subplot(2,1,1);
plot2d3(n, real(y));
plot(n, real(y), 'b.', 'MarkerSize', 10);
title('Real part of signal y(n)');
xlabel('Time Index n'); ylabel('Re{y(n)}');
xgrid(1);
// Plot Imaginary part of y(n)
subplot(2,1,2);
plot2d3(n, imag(y));
plot(n, imag(y), 'r.', 'MarkerSize', 10);
title('Imaginary part of signal y(n)');
xlabel('Time Index n'); ylabel('Im{y(n)}');
xgrid(1);
