function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    n = n_min:n_max;
    
    y1 = zeros(1, length(n));
    y2 = zeros(1, length(n));
    
    y1(n1 - n_min + 1) = x1n;
    y2(n2 - n_min + 1) = x2n;
    
    yn = y1 + y2;
    yorigin = 1 - n_min;
    
    scf();
    subplot(3,1,1);
    plot2d3(n1, x1n, style=2);
    plot2d(n1, x1n, style=-5);
    xgrid(); title('x1(n)');
    subplot(3,1,2); 
    plot2d3(n2, x2n, style=3);
    plot2d(n2, x2n, style=-5);
    xgrid(); title('x2(n)');
    subplot(3,1,3);
    plot2d3(n, yn, style=5);
    plot2d(n, yn, style=-5);
    xgrid(); title('y(n) = x1(n) + x2(n)');
endfunction

[yn, yorigin] = add([0, 1, 3, -2], 1, [1, 1, 2, 3], 2)
