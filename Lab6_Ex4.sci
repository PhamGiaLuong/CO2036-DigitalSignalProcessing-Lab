// Define frequency vector
w = linspace(0, 2*%pi, 500);

// Calculate the frequency response H(w)
H = 1 ./ (1 + 0.1*exp(-%i*w) + 0.2*exp(-%i*2*w));

// Calculate Amplitude and Phase
mag_H = abs(H);
phase_H = atan(imag(H), real(H));

// Plot Amplitude Spectrum
scf(3); clf;
subplot(2,1,1);
plot(w, mag_H);
title('Amplitude Spectrum of h(n)');
xlabel('Frequency w (rad/sample)');
ylabel('|H(w)|');

// Plot Phase Spectrum
subplot(2,1,2);
plot(w, phase_H);
title('Phase Spectrum of h(n)');
xlabel('Frequency w (rad/sample)');
ylabel('Phase (rad)');
