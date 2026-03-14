// Cau b1
n = -5:7;
xn = zeros(1, length(n));
xn(n >= 0 & n <= 3) = 1;

scf(); plot2d3(n, xn, style=2);
plot2d(n, xn, style=-5);
xgrid();
title('Signal x(n)'); 
xlabel('n'); ylabel('Amplitude');

// Cau b2
yn = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == n(i)^2);
    if ~isempty(idx) then yn(i) = xn(idx); end
end
scf(); plot2d3(n, yn, style=2);
plot2d(n, yn, style=-5);
xgrid();
title('Signal y(n) = x(n^2)'); 
xlabel('n'); ylabel('Amplitude');

// Cau b3
y_delay = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == (n(i) - 2));
    if ~isempty(idx) then y_delay(i) = yn(idx); end
end
scf(); plot2d3(n, y_delay, style=2);
plot2d(n, y_delay, style=-5);
xgrid();
title('Signal y_2''(n) = y(n-2)'); 
xlabel('n'); ylabel('Amplitude');

// Cau b4
x2n = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == (n(i) - 2));
    if ~isempty(idx) then x2n(i) = xn(idx);end
end
scf(); plot2d3(n, x2n, style=2);
plot2d(n, x2n, style=-5);
xgrid();
title('Signal x_2(n) = x(n-2)'); 
xlabel('n'); ylabel('Amplitude');

// Cau b5
y2n = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == n(i)^2);
    if ~isempty(idx) then y2n(i) = x2n(idx); end
end
scf(); plot2d3(n, y2n, style=2);
plot2d(n, y2n, style=-5);
xgrid();
title('Signal y_2(n) = T[x_2(n)]'); 
xlabel('n'); ylabel('Amplitude');
