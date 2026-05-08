// Compute linear convolution using FFT and zero-padding
function y = linear_conv_fft(x, h)
    Lx = length(x);
    Lh = length(h);
    
    // Determine the length of linear convolution
    N = Lx + Lh - 1; 
    
    // Zero-padding both sequences to length N
    x_pad = [x, zeros(1, N - Lx)];
    h_pad = [h, zeros(1, N - Lh)];
    
    // Compute circular convolution of size N using FFT
    Y = fft(x_pad) .* fft(h_pad);
    y = ifft(Y);
    
    y = real(y); 
endfunction

// Verify
x = [1, 2, 3, 4, 5];
h = [1, 1, 1];

y_custom = linear_conv_fft(x, h);
y_builtin = conv(x, h);

// Display results
disp("Result using custom FFT with zero-padding:");
disp(y_custom);

disp("Result using built-in conv() function:");
disp(y_builtin);
