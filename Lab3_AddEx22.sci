n = -6:8;
x = zeros(1, length(n));
x(n==-1) = 1;
x(n==0) = 1;
x(n==1) = 1;
x(n==2) = 1;
x(n==3) = 0.5;
x(n==4) = 0.5;

// Cau a
xa = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == (n(i) - 2));
    if ~isempty(idx) then xa(i) = x(idx); end
end

scf(); plot2d3(n, xa, style=2);
plot2d(n, xa, style=-5);
xgrid()
title('Signal x(n-2)'); xlabel('n'); ylabel('Amplitude');

// Cau b
xb = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == (4 - n(i)));
    if ~isempty(idx) then xb(i) = x(idx); end
end

scf(); plot2d3(n, xb, style=2);
plot2d(n, xb, style=-5);
xgrid();
title('Signal x(4-n)'); xlabel('n'); ylabel('Amplitude');

// Cau c
xc = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == (n(i) + 2));
    if ~isempty(idx) then xc(i) = x(idx); end
end

scf(); plot2d3(n, xc, style=2);
plot2d(n, xc, style=-5);
xgrid();
title('Signal x(n+2)'); xlabel('n'); ylabel('Amplitude');

// Cau d
u_2n = zeros(1, length(n));
u_2n(n <= 2) = 1;
xd = x .* u_2n;

scf();  plot2d3(n, xd, style=2);
plot2d(n, xd, style=-5);
xgrid();
title('Signal x(n)u(2-n)'); xlabel('n'); ylabel('Amplitude');

// Cau e
delta_n3 = zeros(1, length(n));
delta_n3(n == 3) = 1;

x_delay1 = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == (n(i) - 1));
    if ~isempty(idx) then x_delay1(i) = x(idx); end
end

xe = x_delay1 .* delta_n3;

scf();  plot2d3(n, xe, style=2);
plot2d(n, xe, style=-5);
xgrid();
title('Signal x(n-1)\delta(n-3)'); xlabel('n'); ylabel('Amplitude');

// Cau f
xf = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == n(i)^2);
    if ~isempty(idx) then xf(i) = x(idx); end
end

scf(); plot2d3(n, xf, style=2);
plot2d(n, xf, style=-5);
xgrid();
title('Signal x(n^2)'); xlabel('n'); ylabel('Amplitude');

// Cau g
x_fold = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == -n(i));
    if ~isempty(idx) then x_fold(i) = x(idx); end
end

x_even = 0.5 * (x + x_fold);

scf(); plot2d3(n, x_even, style=2);
plot2d(n, x_even, style=-5);
xgrid();
title('Even Component x_e(n)'); xlabel('n'); ylabel('Amplitude');

// Cau h
x_odd = 0.5 * (x - x_fold);

scf(); plot2d3(n, x_odd, style=2);
plot2d(n, x_odd, style=-5);
xgrid();
title('Odd Component x_o(n)'); xlabel('n'); ylabel('Amplitude');
