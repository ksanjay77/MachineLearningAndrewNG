function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


m = length(y);  % number of training examples
n = size(X,2);  % number of features + 1 (for constant term)
grad = zeros(n,1);
h = zeros(m,1);

d = X * theta;
h = sigmoid(d)
%fprintf('d=%f, h(%d)=%f\n', d, i, h(i));
theta1 = theta(2:n,:);
J = (-1.0/m)*sum(y.*log(h) + (1-y).*log(1-h)) + (lambda/(2*m))*theta1'*theta1;

grad = (1/m)*(h-y)'*X + [0 (lambda/m)*theta1'];




% =============================================================

end
