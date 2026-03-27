// Input sequences
xn_circ = [1, 2, -3, 2, 1];
hn_circ = [1, 0, -1, -1, 1];
N = length(xn_circ);
yn_circ_fold = zeros(1, N);

// Compute using definition
for n = 0:N-1
    sum_val = 0;
    for k = 0:N-1
        idx = pmodulo(n - k, N) + 1;
        sum_val = sum_val + hn_circ(k+1) * xn_circ(idx);
    end
    yn_circ_fold(n+1) = sum_val;
end
disp("Circular convolution y(n) using definition:");
disp(yn_circ_fold);

// Create Circulant matrix
X_circulant = zeros(N, N);
for row = 1:N
    for col = 1:N
        idx = pmodulo(row - col, N) + 1;
        X_circulant(row, col) = xn_circ(idx);
    end
end
// Compute matrix multiplication
yn_circ_matrix = X_circulant * hn_circ';
disp("Circular convolution y(n) using matrix method:");
disp(yn_circ_matrix');

// Calculate energy for circular convolution
Ex_circ = xn_circ.^2;
Ey_circ = yn_circ_matrix'.^2;
n_axis = 0:N-1;
// Plotting
scf();
subplot(3,1,1);
plot2d3(n_axis, xn_circ, style=2); 
plot2d(n_axis, xn_circ, style=-5);
xgrid();
title('Signal x(n)');
subplot(3,1,2);
plot2d3(n_axis, yn_circ_matrix, style=5); 
plot2d(n_axis, yn_circ_matrix, style=-5);
xgrid();
title('Circular Convolution y(n)');
subplot(3,1,3);
plot2d3(n_axis, Ey_circ, style=3); 
plot2d(n_axis, Ey_circ, style=-5);
xgrid();
title('Energy of y(n)');
