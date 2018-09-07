function theta = myGradDes(X,Y,theta,alpha,num_iters);

J_prev = inf;
J = computeCost(X,Y,theta);
m = size(X,1);

%disp(m),disp(J);
% graph = zeros(m,2);
% graph(1,1) = theta;
% graph(1,2) = j
%disp(size(graph));
graph = [theta' , J];
%graph = [0,J];

for i=1:num_iters
    error = X*theta - Y;
    delJ = X' * error;
    theta = theta - (alpha/m) .* delJ;
    J_prev = J;
    J=computeCost(X,Y,theta);
    graph = [graph;theta',J];
    end;

%plot(graph(:,1),graph(:,2));
%axis(-5,500,4,6);

plot(0:num_iters,graph(:,3));
%axis([0 num_iters 4.476 4.484]);
