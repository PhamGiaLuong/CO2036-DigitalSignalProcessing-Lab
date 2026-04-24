// Define time vector
n = 0:50;
x1 = (0.1).^n;
// Define frequency vector
w = linspace(0, 2*%pi, 500);

// Compute
X1 = x1 * exp(-%i * n' * w);

// Calculate Amplitude and Phase
mag_X1 = abs(X1);
phase_X1 = atan(imag(X1), real(X1));

// Plot Amplitude Spectrum
scf(1); clf;
subplot(2,1,1);
plot(w, mag_X1);
title('Amplitude Spectrum of x1(n)');
xlabel('Frequency w (rad/sample)');
ylabel('|X1(w)|');
xgrid();

// Plot Phase Spectrum
subplot(2,1,2);
plot(w, phase_X1);
title('Phase Spectrum of x1(n)');
xlabel('Frequency w (rad/sample)');
ylabel('Phase (rad)');
xgrid();
