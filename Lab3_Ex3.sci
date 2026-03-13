function [yn, yorigin] = fold(xn, xorigin)
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;
    
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
    title('Folded Signal y(n) = x(-n)');
endfunction

[yn, yorigin] = fold([1, -2, 3, 6], 3)
disp("yn = "); disp(yn);
disp("yorigin = "); disp(yorigin);
