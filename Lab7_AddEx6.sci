// F1: Compute circular convolution using DFT
function y = circ_conv_fft(x, h)
    X = fft(x);
    H = fft(h);
    
    Y = X .* H;
    
    y = ifft(Y);
endfunction

// F2: Compute circular convolution directly
function y = circ_conv_direct(x, h)
    N = length(x);
    y = zeros(1, N);
    
    for n = 1:N
        for m = 1:N
            circ_idx = pmodulo(n - m, N) + 1; 
            y(n) = y(n) + x(m) * h(circ_idx);
        end
    end
endfunction

// Verify
x = [1, 2, 3, 4];
h = [2, -1, 1, 3];

y_fft = circ_conv_fft(x, h);
y_direct = circ_conv_direct(x, h);

// Display results
disp("Result using FFT method:");
disp(y_fft);

disp("Result using direct method:");
disp(y_direct);

disp("Difference between two methods:");
disp(norm(y_fft - y_direct));
