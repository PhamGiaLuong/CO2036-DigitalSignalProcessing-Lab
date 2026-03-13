function [yn, yorigin] = delay(xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;
    
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    scf();
    subplot(2,1,1);
    plot2d3(nx, xn, style=2);
    plot2d(nx, xn, style=-5);
    xgrid();
    title('Signal x(n)');
    
    subplot(2,1,2);
    plot2d3(ny, yn, style=5);
    plot2d(ny, yn, style=-5);
    xgrid();
    title('Delayed Signal y(n) = x(n - k)');
endfunction

[yn, yorigin] = delay([1, -2, 3, 6], 3, 1)
