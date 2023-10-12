%% Matlab script for plotting speed per yaw rate

% Clear workspace and command window
clear all;
clc;

Kp = 5;
Ki = 0.04;


% Load the Simulink model
load_system('simulinkModel');

% Set simulation parameters if needed
% For example, setting the simulation time to 10 seconds
set_param('simulinkModel', 'StopTime', '50');

% Simulate the model
out = sim('simulinkModel');

%% Loading data
for i = 1:5
    if i == 1
        load('experiment 1.mat')
        yawrate_1 = yawrate;
        speed_FL_1 = speed_FL;
        speed_FR_1 = speed_FR;
        speed_RL_1 = speed_RL;
        speed_RR_1 = speed_RR;        
    elseif i == 2
        load('experiment 2.mat')
        yawrate_2 = yawrate;
        speed_FL_2 = speed_FL;
        speed_FR_2 = speed_FR;
        speed_RL_2 = speed_RL;
        speed_RR_2 = speed_RR; 
    elseif i == 3
        load('experiment 3.mat')
        yawrate_3 = yawrate;
        speed_FL_3 = speed_FL;
        speed_FR_3 = speed_FR;
        speed_RL_3 = speed_RL;
        speed_RR_3 = speed_RR; 
    elseif i == 4
        load('experiment 4.mat')   
        yawrate_4 = yawrate;
        speed_FL_4 = speed_FL;
        speed_FR_4 = speed_FR;
        speed_RL_4 = speed_RL;
        speed_RR_4 = speed_RR; 
    elseif i == 5
        load('experiment 5.mat')
        yawrate_5 = yawrate;
        speed_FL_5 = speed_FL;
        speed_FR_5 = speed_FR;
        speed_RL_5 = speed_RL;
        speed_RR_5 = speed_RR; 
    end
end


%% Uncomment for loading data constant speed        
% for i = 6:8    
%     if i == 6
%         load('experiment 6 (constant v15).mat')
%         yawrate_6 = yawrate;
%         speed_FL_6 = speed_FL;
%         speed_FR_6 = speed_FR;
%         speed_RL_6 = speed_RL;
%         speed_RR_6 = speed_RR; 
%     elseif i == 7
%         load('experiment 7 (constant v15).mat')
%         yawrate_7 = yawrate;
%         speed_FL_7 = speed_FL;
%         speed_FR_7 = speed_FR;
%         speed_RL_7 = speed_RL;
%         speed_RR_7 = speed_RR;
%     elseif i == 8
%         load('experiment 8 (constant v12).mat')
%         yawrate_8 = yawrate;
%         speed_FL_8 = speed_FL;
%         speed_FR_8 = speed_FR;
%         speed_RL_8 = speed_RL;
%         speed_RR_8 = speed_RR; 
%     end
% end

%% Taking the mean of the data
speed_1 = transpose([speed_FL_1, speed_FR_1]);
speed_ave_1 = mean(speed_1);

speed_2 = transpose([speed_FL_2, speed_FR_2]);
speed_ave_2 = mean(speed_2);

speed_3 = transpose([speed_FL_3, speed_FR_3]);
speed_ave_3 = mean(speed_3);

speed_4 = transpose([speed_FL_4, speed_FR_4]);
speed_ave_4 = mean(speed_4);

speed_5 = transpose([speed_FL_5, speed_FR_5]);
speed_ave_5 = mean(speed_5);

%% Uncomment for mean of data with constant speed

% speed_6 = transpose([speed_FL_6, speed_FR_6]);
% speed_ave_6 = mean(speed_6);
% 
% speed_7 = transpose([speed_FL_7, speed_FR_7]);
% speed_ave_7 = mean(speed_7);
% 
% speed_8 = transpose([speed_FL_8, speed_FR_8]);
% speed_ave_8 = mean(speed_8);

% speed_ave = transpose([speed_ave_1, speed_ave_2, speed_ave_3, speed_ave_4, speed_ave_5]);
% yawrate = [yawrate_1; yawrate_2; yawrate_3; yawrate_4; yawrate_5];

%% Plotting
color = [199, 25, 24]/256;
figure
%scatter(abs(speed_ave_1), abs(yawrate_1), '.', 'MarkerEdgeColor', color);
hold on 
scatter(abs(speed_ave_2), abs(yawrate_2), '.', 'MarkerEdgeColor', color);
%scatter(abs(speed_ave_3), abs(yawrate_3), '.', 'MarkerEdgeColor', color);
%scatter(abs(speed_ave_4), abs(yawrate_4), '.', 'MarkerEdgeColor', color);
%scatter(abs(speed_ave_5), abs(yawrate_5), '.', 'MarkerEdgeColor', color);
plot(out.longitudinal_velocity.Data(30:1001),out.yaw_velocity.Data(30:1001), 'g','LineWidth',3)

grid on
xlim([0 4])
ylim([0 2.5])
title('Yaw rate per longitudinal velocity', 'Interpreter', 'latex')
xlabel('Velocity (m/s)', 'Interpreter', 'latex') 
ylabel('Yaw Rate (rad/s)', 'Interpreter', 'latex') 
hold off

%% Uncomment for legend
%legend({'Test 1','Test 2', 'Test 3', 'Test 4', 'Test 5'},'Location','northwest', 'Interpreter', 'latex')

%% Uncomment for plot with constant speed 

% scatter(abs(speed_ave_6), abs(yawrate_6), 'x');
% scatter(abs(speed_ave_7), abs(yawrate_7), 'x');
% scatter(abs(speed_ave_8), abs(yawrate_8), 'x');
% scatter(speed_ave, -yawrate, '.');



