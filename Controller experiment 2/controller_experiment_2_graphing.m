%% Experiment controller
clear all;
clc;

% %% Loading model
% %Load the Simulink model (replace 'your_model_name' with your model's name)
% load_system('simulinkModel');
% 
% % Set simulation parameters if needed
% % For example, setting the simulation time to 10 seconds
% set_param('simulinkModel', 'StopTime', '50');
% 
% % Simulate the model
% out = sim('simulinkModel');

%% Load all data without controller
% load('no_controller.mat');
% yawrate_no_controller = yawrate;
% time_no_controller = time;
% speed_FL_no_controller = speed_FL;
% speed_FR_no_controller = speed_FR;
% speed_RL_no_controller = speed_RL;
% speed_RR_no_controller = speed_RR;  
% speed_no_controller = transpose([speed_FL_no_controller, speed_FR_no_controller]);
% speed_ave_no_controller = mean(speed_no_controller);
 
%% Load all data of experiments
for i = 1:3     % Change to number of experiments
    if i == 1
        load('experiment_1.mat')
        % Kp = 1, Ki = 0.008
        yawrate_1 = yawrate;
        time_1 = time;
        speed_FL_1 = speed_FL;
        speed_FR_1 = speed_FR;
        speed_RL_1 = speed_RL;
        speed_RR_1 = speed_RR;    
        speed_1 = transpose([speed_FL_1, speed_FR_1]);
        speed_ave_1 = mean(speed_1);
    elseif i == 2
        load('experiment_2.mat')
        % Kp = 2, Ki = 0.016
        yawrate_2 = yawrate;
        time_2 = time;
        speed_FL_2 = speed_FL;
        speed_FR_2 = speed_FR;
        speed_RL_2 = speed_RL;
        speed_RR_2 = speed_RR; 
        speed_2 = transpose([speed_FL_2, speed_FR_2]);
        speed_ave_2 = mean(speed_2);
    elseif i == 3
        load('experiment_3.mat')
        yawrate_3 = yawrate;
        time_3 = time;
        speed_FL_3 = speed_FL;
        speed_FR_3 = speed_FR;
        speed_RL_3 = speed_RL;
        speed_RR_3 = speed_RR; 
        speed_3 = transpose([speed_FL_3, speed_FR_3]);
        speed_ave_3 = mean(speed_3);
    elseif i == 4
        load('experiment_4.mat') 
        yawrate_4 = yawrate;
        time_4 = time;
        speed_FL_4 = speed_FL;
        speed_FR_4 = speed_FR;
        speed_RL_4 = speed_RL;
        speed_RR_4 = speed_RR; 
        speed_4 = transpose([speed_FL_4, speed_FR_4]);
        speed_ave_4 = mean(speed_4);
    elseif i == 5
        load('experiment_5.mat')
        yawrate_5 = yawrate;
        time_5 = time;
        speed_FL_5 = speed_FL;
        speed_FR_5 = speed_FR;
        speed_RL_5 = speed_RL;
        speed_RR_5 = speed_RR; 
        speed_5 = transpose([speed_FL_5, speed_FR_5]);
        speed_ave_5 = mean(speed_5);
    elseif i == 6
        load('experiment_6.mat')
        yawrate_6 = yawrate;
        time_6 = time;
        speed_FL_6 = speed_FL;
        speed_FR_6 = speed_FR;
        speed_RL_6 = speed_RL;
        speed_RR_6 = speed_RR; 
        speed_6 = transpose([speed_FL_6, speed_FR_6]);
        speed_ave_6 = mean(speed_6);
    elseif i == 7
        load('experiment_7.mat') 
        yawrate_7 = yawrate;
        time_7 = time;
        speed_FL_7 = speed_FL;
        speed_FR_7 = speed_FR;
        speed_RL_7 = speed_RL;
        speed_RR_7 = speed_RR; 
        speed_7 = transpose([speed_FL_7, speed_FR_7]);
        speed_ave_7 = mean(speed_7);
    elseif i == 8
        load('experiment_8.mat')  
        yawrate_8 = yawrate;
        time_8 = time;
        speed_FL_8 = speed_FL;
        speed_FR_8= speed_FR;
        speed_RL_8 = speed_RL;
        speed_RR_8 = speed_RR; 
        speed_8 = transpose([speed_FL_8, speed_FR_8]);
        speed_ave_8 = mean(speed_8);
    end
end

%% Plotting
color = [199, 25, 24]/256;

% % No controller, experiment a
% figure(1)
% scatter(abs(speed_ave_no_controller), abs(yawrate_no_controller), '.');
% hold on 
% grid on
% scatter(abs(speed_ave_1), abs(yawrate_1), '.');
% % plot(out.longitudinal_velocity.Data(30:1001),out.yaw_velocity.Data(30:1001), 'g','LineWidth',3)
% 
% xlim([0 4])
% ylim([0 2.5])
% title('No controller, experiment a', 'Interpreter', 'latex')
% xlabel('Velocity (m/s)', 'Interpreter', 'latex') 
% ylabel('Yaw Rate (rad/s)', 'Interpreter', 'latex') 
% legend({'No controller','experiment a', 'model'},'Location','northwest', 'Interpreter', 'latex')
% 
% % No controller, experiment b
% figure(2)
% scatter(abs(speed_ave_no_controller), abs(yawrate_no_controller), '.');
% hold on 
% grid on
% scatter(abs(speed_ave_2), abs(yawrate_2), '.');
% % plot(out.longitudinal_velocity.Data(30:1001),out.yaw_velocity.Data(30:1001), 'g','LineWidth',3)
% xlim([0 4])
% ylim([0 2.5])
% title('No controller, experiment b', 'Interpreter', 'latex')
% xlabel('Velocity (m/s)', 'Interpreter', 'latex') 
% ylabel('Yaw Rate (rad/s)', 'Interpreter', 'latex') 
% legend({'No controller','experiment b', 'model'},'Location','northwest', 'Interpreter', 'latex')
% 
% % experiment a, experiment b
% figure(3)
% scatter(abs(speed_ave_1), abs(yawrate_1), '.');
% hold on 
% grid on
% scatter(abs(speed_ave_2), abs(yawrate_2), '.');
% % plot(out.longitudinal_velocity.Data(30:1001),out.yaw_velocity.Data(30:1001), 'g','LineWidth',3)
% xlim([0 4])
% ylim([0 2.5])
% title('experiment a, experiment b', 'Interpreter', 'latex')
% xlabel('Velocity (m/s)', 'Interpreter', 'latex') 
% ylabel('Yaw Rate (rad/s)', 'Interpreter', 'latex') 
% legend({'experiment a','experiment b', 'model'},'Location','northwest', 'Interpreter', 'latex')



remove_points = 700;

figure(1)
scatter(abs(speed_ave_1), abs(yawrate_1), '.');
hold on 
scatter(abs(speed_ave_3), abs(yawrate_3), '.');
%catter(abs(speed_ave_5), abs(yawrate_5), '.', 'r');
%plot(out.longitudinal_velocity.Data,out.yaw_velocity.Data, 'g','LineWidth',3)
grid on
legend({'Car 2: Test 1','Car 2: Test 2', 'Car 3: Test 1', 'Car 3: Test 2' , 'model'},'Location','northwest', 'Interpreter', 'latex')



