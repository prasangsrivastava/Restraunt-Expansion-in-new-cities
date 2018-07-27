function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

h=X*theta;
e=(h-y);
delta=X'*e; 
%fprintf(delta);
theta_change=alpha*(1/m)*delta;
theta=theta-theta_change;
 
    J_history(iter) = computeCost(X, y, theta);

end

end
