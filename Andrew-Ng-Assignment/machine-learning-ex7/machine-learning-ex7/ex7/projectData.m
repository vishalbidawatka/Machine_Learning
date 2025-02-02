function Z1 = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z1 = zeros(size(X, 1), K);
Z2 = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

U_reduce=U(:,1:K);
Z1=U_reduce'*X';
Z1=Z1';


% 2nd method
% for i=1:size(X, 1),
%     for j=1:K,
%         x = X(i, :)';
%         projection_k = x' * U(:, j);
%         Z2(i, j) = projection_k;
%     end
% end



%   Z1==(Z2)  

% =============================================================

end
