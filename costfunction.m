function y = costfunction(X,Y,theta),

% X = m * (n+1)
% Y = m * 1
% theta = (n+1) * 1

h = X * theta;
cost = h-Y;
squarecost = cost.^2;

m= size(Y,1);
% disp('m = '),disp(m)
y = 1/(2*m) * sum(squarecost);