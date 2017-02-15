function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%



n = size(theta);

z = X * theta;
theta_no_1 = theta(2:n,:);

J = 0.5 / m * (z -  y)' * (z - y);

J = J + lambda * 0.5 / m * theta_no_1' * theta_no_1;

grad_reg = zeros(size(theta));
grad_reg(2:n,:) = 1/m * lambda * theta_no_1;
           
r = X * theta - y;
grad = 1/m * (X' * r) + grad_reg;
                         








% =========================================================================

grad = grad(:);

end
