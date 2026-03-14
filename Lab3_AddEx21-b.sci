n = -8:8;
x = zeros(1, length(n));
x(n==-2) = 1/3; x(n==-1) = 2/3; x(n>=0 & n<=3) = 1;

// Thao tac Fold
vn = zeros(1, length(n));
for i=1:length(n)
    idx = find(n == -n(i));
    if ~isempty(idx) then vn(i) = x(idx); end
end

// Thao tac Delay
y1n = zeros(1, length(n));
for i=1:length(n)
    idx = find(n == (n(i) - 4));
    if ~isempty(idx) then y1n(i) = vn(idx); end
end

scf();
subplot(2,1,1); plot2d3(n, vn, style=3);
plot2d(n, vn, style=-5);
xgrid(); title('v(n) = x(-n)');
subplot(2,1,2); plot2d3(n, y1n, style=5);
plot2d(n, y1n, style=-5);
xgrid(); title('y_1(n) = x(-n+4)');

// Thao tac Delay
wn = zeros(1, length(n));
for i=1:length(n)
    idx = find(n == (n(i) - 4));
    if ~isempty(idx) then wn(i) = x(idx); end
end

// Thao tac Fold
y2n = zeros(1, length(n));
for i=1:length(n)
    idx = find(n == -n(i));
    if ~isempty(idx) then y2n(i) = wn(idx); end
end

scf();
subplot(2,1,1); plot2d3(n, wn, style=3);
plot2d(n, wn, style=-5);
xgrid(); title('w(n) = x(n-4)');
subplot(2,1,2); plot2d3(n, y2n, style=5);
plot2d(n, y2n, style=-5);
xgrid(); title('y_2(n) = x(-n-4)');
