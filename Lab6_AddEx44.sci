n_plot = -6:6;
x_plot = [3, 2, 1, 0, 1, 2, 3, 2, 1, 0, 1, 2, 3];

N = 6;
n = 0:N-1;
x = [3, 2, 1, 0, 1, 2];
k = 0:N-1;

ck = (1/N) * x * exp(-%i * 2 * %pi * n' * k / N);

mag_ck = abs(ck);
phase_ck = atan(imag(ck), real(ck));
phase_ck(abs(phase_ck) < 1e-10) = 0; 

// Plotting
scf(1); clf;

// Time-domain signal
subplot(3,1,1);
plot2d3(n_plot, x_plot);
plot(n_plot, x_plot, 'b.', 'MarkerSize', 10);
title('Periodic Signal x(n)');
xlabel('Time Index n'); ylabel('Amplitude');
xgrid();

// Magnitude Spectrum
subplot(3,1,2);
plot2d3(k, mag_ck);
plot(k, mag_ck, 'r.', 'MarkerSize', 10);
title('Magnitude Spectrum |c_k|');
xlabel('Frequency Index k'); ylabel('Magnitude');
xgrid();

// Phase Spectrum
subplot(3,1,3);
plot2d3(k, phase_ck);
plot(k, phase_ck, 'g.', 'MarkerSize', 10);
title('Phase Spectrum angle(c_k)');
xlabel('Frequency Index k'); ylabel('Phase (rad)');
gca().data_bounds = [0, -1; 5, 1]; 
xgrid();
