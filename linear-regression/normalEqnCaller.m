printf('Loading up dataset for testing...\n');
data = csvread('~/Downloads/nba_players_2015.csv');
%% grab the defensive ratings
X = data(:, 5:6);
%% grab the mins played
y = data(:, 10);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);

fprintf('Running gradient descent ...\n');
