// Define frequency vector
w = linspace(0, 2*%pi, 500);

// Frequency response Y(w) = H(w) * X(w)
// H(w) = 1 + exp(-%i*w)
// X(w) = 1 / (1 - 0.5*exp(-%i*w))
Y = (1 + exp(-%i*w)) ./ (1 - 0.5*exp(-%i*w));

// Calculate Amplitude and Phase
mag_Y = abs(Y);
phase_Y = atan(imag(Y), real(Y));

// Plot Amplitude Spectrum
scf(5); clf;
subplot(2,1,1);
plot(w, mag_Y);
title('Amplitude Spectrum of output y(n)');
xlabel('Frequency w (rad/sample)');
ylabel('|Y(w)|');

// Plot Phase Spectrum
subplot(2,1,2);
plot(w, phase_Y);
title('Phase Spectrum of output y(n)');
xlabel('Frequency w (rad/sample)');
ylabel('Phase (rad)');
