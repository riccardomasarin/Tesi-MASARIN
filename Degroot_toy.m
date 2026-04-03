clear; clc; close all;

% DeGroot model on a toy network
% x(k+1) = W * x(k)

% Number of agents
n = 5;

% Influence matrix W (row-stochastic)
% W = [0.7 0.3 0.0 0.0 0.0;
%      0.2 0.5 0.3 0.0 0.0;
%      0.0 0.2 0.5 0.3 0.0;
%      0.0 0.0 0.3 0.5 0.2;
%      0.0 0.0 0.0 0.4 0.6];

W = [0.7 0.3 0.0 0.0 0.0;
     0.1 0.4 0.5 0.0 0.0;
     0.1 0.2 0.5 0.2 0.0;
     0.0 0.0 0.5 0.3 0.2;
     0.0 0.0 0.0 0.4 0.6];

W(1,:) = [0.95 0.05 0 0 0]; %agente particolarmente stubborn che ascolta molto la sua opinione

% Check that rows sum to 1
disp('Row sums of W:');
disp(sum(W,2));

% Initial opinions: provo varie opinioni iniziali
x0 = [0.1; 0.9; 0.2; 0.8; 0.3];
%x0 = [0; 1; 0; 1; 0];
%x0 = rand(5,1); %questo randomico da sempre un output diverso

% Number of iterations
T = 25;

% Store trajectories
X = zeros(n, T+1);
X(:,1) = x0;

% Simulation
for k = 1:T
    X(:,k+1) = W * X(:,k);
end

%% Print final opinion
disp('Final opinions:');
disp(X(:,end));

%% Plot opinion trajectories
figure;
plot(0:T, X(1,:), '-o', 'LineWidth', 1.5); hold on;
plot(0:T, X(2,:), '-s', 'LineWidth', 1.5);
plot(0:T, X(3,:), '-d', 'LineWidth', 1.5);
plot(0:T, X(4,:), '-^', 'LineWidth', 1.5);
plot(0:T, X(5,:), '-x', 'LineWidth', 1.5);

xlabel('Time step k');
ylabel('Opinion');
title('DeGroot opinion dynamics on a toy network');
legend('Agent 1','Agent 2','Agent 3','Agent 4','Agent 5','Location','best');
grid on;

%% Consensus value estimate
% For a connected and aperiodic row-stochastic matrix,
% opinions should converge to consensus
consensus_estimate = X(:,end);
disp('Approximate consensus value:');
disp(mean(consensus_estimate));

%% Show the graph
A = double(W > 0);   % adjacency from nonzero weights (boolean matrix)
G = digraph(A');

figure;
plot(G, 'Layout', 'layered', 'NodeLabel', 1:n);
title('Toy network structure');
