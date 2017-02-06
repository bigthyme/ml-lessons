printf('Loading up dataset for testing...\n');
data = csvread('player-defense_2015.csv');
% grab the proper columns from the csv
X = data(:, 1:2);
% grab the mins played column
y = data(:, 3);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
