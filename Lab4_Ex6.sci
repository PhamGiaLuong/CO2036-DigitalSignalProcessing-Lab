// Input sequences
xn = [1, 2, -3, 2, 1];
hn = [1, 0, -1];

// Linear convolution using built-in function
yn_fold_shift = conv(xn, hn);
disp("Output y(n) using folding and shifting:");
disp(yn_fold_shift);

// Create Toeplitz-like convolution matrix
Nx = length(xn); 
Nh = length(hn); 
Ny = Nx + Nh - 1;
X_matrix = zeros(Ny, Nh);
for i = 1:Nh
    X_matrix(i:i+Nx-1, i) = xn';
end
// Compute convolution
yn_matrix = X_matrix * hn';
disp("Output y(n) using matrix method:");
disp(yn_matrix');

// Calculate energy
Ex = xn.^2;
Ey = yn_matrix'.^2;

// Define time indices
nx = 0:Nx-1;
ny = 0:Ny-1;

// Plotting
scf();
subplot(3,1,1);
plot2d3(nx, xn, style=2); 
plot2d(nx, xn, style=-5);
xgrid();
title('Signal x(n)');
subplot(3,1,2);
plot2d3(ny, yn_matrix, style=5); 
plot2d(ny, yn_matrix, style=-5);
xgrid();
title('Linear Convolution y(n)');
subplot(3,1,3);
plot2d3(ny, Ey, style=3); 
plot2d(ny, Ey, style=-5);
xgrid();
title('Energy of y(n)');
