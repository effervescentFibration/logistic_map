function [] = logMap()
m = 21;
X = iterateLogMap(0.6, 0.2, m);
figure
subplot(3,1,1)
plot((1:m), X(1:m),'.')
title('x_n vs. n (x_0 through x_{20})')
xlabel('x')
ylabel('x_n')

subplot(3,1,2)
plot(X(1:(m-1)), X(2:m),'.')
title('x_{n+1} vs. x_n (x_0 through x_{20})')
xlabel('x_n')
ylabel('x_{n+1}')

subplot(3,1,3)
plot(X(1:(m-2)), X(3:(m)),'.')
title('x_{n+2} vs. x_n (x_0 through x_{20})')
xlabel('x')
ylabel('x_{n+2}')
end

function [x] = iterateLogMap(r, x0, m)
if m < 1
    error('m must exceed 1')
end %if
x = ones(1,m);
x(1) = x0;
for n = 2:m
    x(n) = nextLogMap(r, x(n - 1));
end % for
end % logMapIterate

function [next] = nextLogMap(r, xN)
% computes the (i + 1)th
next = r * xN * (1 - xN);
end % logMap


