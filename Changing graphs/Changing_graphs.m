
clear all;
clc;

%% Controlled ur graph
openfig('Controlled ur graph.fig')

% Create a legend object with labels
legend_labels = {'Measurements', 'Model'};

% Add a legend to the figure
legend(legend_labels, 'Location', 'southeast', 'Interpreter', 'latex'); 

% Change the current title
new_title = 'Yaw rate per longitudinal velocity (with controller)';
title(new_title, 'Interpreter', 'latex');

% Printing the figure
print -depsc Controlled_ur_graph

%% Uncontrolled ur graph

openfig('Uncontrolled ur graph.fig')

% Create a legend object with labels
legend_labels = {'Measurements', 'Model'};

% Add a legend to the figure
legend(legend_labels, 'Location', 'southeast', 'Interpreter', 'latex'); 

% Change the current title
new_title = 'Yaw rate per longitudinal velocity (without controller)';
title(new_title, 'Interpreter', 'latex');

% Printing the figure
print -depsc Uncontrolled_ur_graph

%% Controlled XY graph

openfig('Controlled XY.fig')

% Create a legend object with labels
legend_labels = {'Vehicle path'};

% Add a legend to the figure
legend(legend_labels, 'Location', 'northeast', 'Interpreter', 'latex'); 

% Add x and y axis labels
xlabel('X-Axis', 'Interpreter', 'latex');
ylabel('Y-Axis', 'Interpreter', 'latex');

% Change the current title
new_title = 'Controlled vehicle driving circle (with model)';
title(new_title, 'Interpreter', 'latex');

% Printing the figure
print -depsc Controlled_XY

%% Controlled XY graph

openfig('Uncontrolled XY.fig')

% Create a legend object with labels
legend_labels = {'Vehicle path'};

% Add a legend to the figure
legend(legend_labels, 'Location', 'northeast', 'Interpreter', 'latex'); 

% Add x and y axis labels
xlabel('X-Axis', 'Interpreter', 'latex');
ylabel('Y-Axis', 'Interpreter', 'latex');

% Change the current title
new_title = 'Uncontrolled vehicle driving circle (without model)';
title(new_title, 'Interpreter', 'latex');

% Printing the figure
print -depsc Uncontrolled_XY