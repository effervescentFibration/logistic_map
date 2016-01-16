function [next] = logMapNext(r, x_n)
% computes the (i + 1)th
next = r * x_n * (1 - x_n);
end % logMap

function [x] = logMapIterate(r, x_0, m)
if m < 1
    error('m must exceed 1')
end %if
x = ones(1,m);
x(1) = x_0;
for n = 2:m
    x(n) = logMapNext(r, x(n_1));
end % for
end % logMapIterate

function [] = logMap()
X = logMapIterate(0.6, 0.2, 500);
plot(X(1:499), X(2:500))
end
