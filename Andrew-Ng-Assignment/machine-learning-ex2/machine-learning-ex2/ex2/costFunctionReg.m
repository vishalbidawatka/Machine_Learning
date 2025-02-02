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
Z=sigmoid(X*theta);
z1=y.*log(Z);
z2=(1-y).*log(1-Z);
z1=-(sum(z1+z2))/m;



z3=theta.^2;
z3(1)=0;   % to nullify the effect of theta(0) becauze in regularization we don't take the theta(0)
a=(sum(z3)*lambda)/(2*m);
J=z1+a;

%J = ( (1 / m) * sum(-y'*log(sigmoid(X*theta)) - (1-y)'*log( 1 - sigmoid(X*theta))) ) + (lambda/(2*m))*sum(theta(2:length(theta)).*theta(2:length(theta))) ;


gard= (((Z-y)'*X)' + (lambda*theta))/m;

gard(1) = ((Z-y)'*X(:,1))/m;
grad = gard+1-1;






% =============================================================

end
