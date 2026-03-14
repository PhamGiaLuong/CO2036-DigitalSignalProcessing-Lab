n = -5:8;
x = zeros(1, length(n));

x(n==-2) = 1/3;
x(n==-1) = 2/3;
x(n>=0 & n<=3) = 1;

y = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == (-n(i) + 4));
    if ~isempty(idx) then
        y(i) = x(idx);
    end
end

scf();
plot2d3(n, y, style=2);
plot2d(n, y, style=-5);
xgrid()
title('Signal y(n) = x(-n+4)');
xlabel('n');
ylabel('Amplitude');
