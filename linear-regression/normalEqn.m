% declare a normalEqn function in Octave
function [theta] = normalEqn(X, y)

% initialize thetha to a matrix of equal dimensions as expected result
theta = zeros(size(X, 2), 1);
% calculate the inverse matrix of the training data
theta = pinv(X)*y

end
