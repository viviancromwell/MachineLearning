function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

x_size - size(X,1);

for i = 1:x_size
    idx(i) = 1;
    dist_1 = dist(centroid(1,:), X(i, :));


    for j = 2:k
        dist_2 = dist([centroid(j,:), X(i, :));
                   
                if (dist_2 < dist_1)
                       dist_1 = dist_2;
                idx(i) = j;
                end
                   
    end
end
               





% =============================================================

end

function d = dist(x, y)
    diff = x - y;
                       d = sum(diff .^ 2);
end

