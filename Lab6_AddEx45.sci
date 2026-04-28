w = [-%pi, -3*%pi/4, -%pi/2, -%pi/4, 0, %pi/4, %pi/2, 3*%pi/4, %pi];
P_w = [0, 0.0625, 0.25, 1, 4, 1, 0.25, 0.0625, 0];

scf(1); clf;
plot2d3(w, P_w);
plot(w, P_w, 'r.', 'MarkerSize', 10);
title('Power Density Spectrum of x(n)');
xlabel('Frequency \omega (rad/sample)');
ylabel('Power |c_k|^2');
xgrid(1);
ax = gca();
ax.x_ticks = tlist(["ticks", "locations", "labels"], ..
    [-%pi, -3*%pi/4, -%pi/2, -%pi/4, 0, %pi/4, %pi/2, 3*%pi/4, %pi], ..
    ["-\pi", "-3\pi/4", "-\pi/2", "-\pi/4", "0", "\pi/4", "\pi/2", "3\pi/4", "\pi"]);
