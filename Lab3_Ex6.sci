function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    yorigin = xorigin + horigin - 1;
    
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    scf();
    subplot(3,1,1); 
    plot2d3(nx, xn, style=2);
    plot2d(nx, xn, style=-5);
    xgrid(); title('Input x(n)');
    subplot(3,1,2);  
    plot2d3(nh, hn, style=3);
    plot2d(nh, hn, style=-5);
    xgrid(); title('Impulse Response h(n)');
    subplot(3,1,3); 
    plot2d3(ny, yn, style=5);
    plot2d(ny, yn, style=-5);
    xgrid(); title('Output y(n) = x(n) * h(n)');
endfunction

[yn, yorigin] = convolution([0, 1, 3, -2], 1, [1, 1, 2, 3], 2)
