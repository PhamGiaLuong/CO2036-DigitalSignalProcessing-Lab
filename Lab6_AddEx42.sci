// Set parameters
A = 1;
a = 1;
F = linspace(-5, 5, 1000);

// Signal (a)
X_a = A ./ (a + %i * 2 * %pi * F);

// Magnitude and Phase for (a)
mag_Xa = abs(X_a);
phase_Xa = atan(imag(X_a), real(X_a));

scf(1); clf;
subplot(2,1,1);
plot(F, mag_Xa, 'b', 'LineWidth', 2);
title('Magnitude Spectrum of x(t) = A*exp(-at)u(t)');
xlabel('Frequency F (Hz)'); ylabel('|X(F)|');
xgrid(1);

subplot(2,1,2);
plot(F, phase_Xa, 'r', 'LineWidth', 2);
title('Phase Spectrum of x(t) = A*exp(-at)u(t)');
xlabel('Frequency F (Hz)'); ylabel('Phase (rad)');
xgrid(1);

// Signal (b)
X_b = (2 * A * a) ./ (a^2 + (2 * %pi * F).^2);

mag_Xb = abs(X_b);
phase_Xb = atan(imag(X_b), real(X_b)); 

scf(2); clf;
subplot(2,1,1);
plot(F, mag_Xb, 'b', 'LineWidth', 2);
title('Magnitude Spectrum of x(t) = A*exp(-a|t|)');
xlabel('Frequency F (Hz)'); ylabel('|X(F)|');
xgrid(1);

subplot(2,1,2);
plot(F, phase_Xb, 'r', 'LineWidth', 2);
title('Phase Spectrum of x(t) = A*exp(-a|t|)');
xlabel('Frequency F (Hz)'); ylabel('Phase (rad)');
gca().data_bounds = [-5, -1; 5, 1]; 
xgrid(1);
