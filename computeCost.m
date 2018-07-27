function J = computeCost(X, y, theta)

m = length(y); % number of training examples

J = 0;
prediction=X*theta;
sqrerrors=(prediction-y).^2;
J=1/(2*m) * sum(sqrerrors);

end
