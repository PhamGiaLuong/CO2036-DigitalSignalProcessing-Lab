// Define time vector
n = 0:3;
x2 = ones(1, 4); 
// Define frequency vector
w = linspace(0, 2*%pi, 500);

// Compute
X2 = x2 * exp(-%i * n' * w);

// Calculate Amplitude and Phase
mag_X2 = abs(X2);
phase_X2 = atan(imag(X2), real(X2));

// Plot Amplitude Spectrum
scf(2); clf;
subplot(2,1,1);
plot(w, mag_X2);
title('Amplitude Spectrum of x2(n)');
xlabel('Frequency w (rad/sample)');
ylabel('|X2(w)|');

// Plot Phase Spectrum
subplot(2,1,2);
plot(w, phase_X2);
title('Phase Spectrum of x2(n)');
xlabel('Frequency w (rad/sample)');
ylabel('Phase (rad)');
