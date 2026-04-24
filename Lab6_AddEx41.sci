// Parameters for plotting
A = 1;
tau = 1;
k = -5:5;

// Compute Power Spectral Density components
ck_sq = (2 * A ./ (%pi * (1 - 4 * k.^2))).^2;

F = k / tau;

// Plot PSD
scf(4); clf;
plot2d3(F, ck_sq);
plot(F, ck_sq, 'b.', 'MarkerSize', 15);

title('Power Spectral Density (PSD) of Full-Wave Rectified Sinusoid');
xlabel('Frequency F (Hz)');
ylabel('Power |c_k|^2');
set(gca(), "grid", [1 1]);
