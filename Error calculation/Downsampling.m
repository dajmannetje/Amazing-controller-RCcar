%%

clear all; clc; close all;

%%
% Generate scatter plot with original data
x = randn(1000, 1);  % Example data
y = randn(1000, 1);  % Example data


load('experiment 2.mat')
yawrate_2 = yawrate;
speed_FL_2 = speed_FL;
speed_FR_2 = speed_FR;
speed_RL_2 = speed_RL;
speed_RR_2 = speed_RR; 

speed_2 = transpose([speed_FL_2, speed_FR_2]);
speed_ave_2 = mean(speed_2);

color = [199, 25, 24]/256;
figure;
scatter(abs(speed_ave_2), abs(yawrate_2), '.', 'MarkerEdgeColor', color, 'DisplayName', 'Original Data')
hold on;

x = abs(speed_ave_2);
y = abs(yawrate_2);

%%
j = 1;
while j < length(x)
    if (x(j) < 1 && y(j) < 0.75) || y(j) < 0.75 || y(j) > 2
        x(j) = [];
        y(j) = [];
        j = j;
    else
    j = j + 1;
    end
end
j = 1;
while j < length(y)
    if x(j) > 3.1 && y(j) < 1.5
        x(j) = [];
        y(j) = [];
        j = j;
    else
    j = j + 1;
    end
end

% x = x(x <= 1);
% y = y(y <= 0.75);

%%
desired_num_points = 1001;

% Calculate the number of data points to keep
step = floor(length(x) / desired_num_points);

% Downsample the data by taking the mean of each group of 'step' points
x_downsampled = arrayfun(@(i) mean(x(i:i+step-1)), 1:step:length(x)-step+1)';
y_downsampled = arrayfun(@(i) mean(y(i:i+step-1)), 1:step:length(y)-step+1)';

% Create a scatter plot of the downsampled data

scatter(x_downsampled, y_downsampled, 'Marker', 'x', 'MarkerEdgeColor', 'r', 'DisplayName', 'Downsampled Data');


%%

modelVelocity = abs(speed_ave_2); % Extract model velocity data
modelYawRate = abs(yawrate_2);    % Extract model yaw rate data

experimentalSpeed = out.longitudinal_velocity.Data; % Extract experimental speed data
experimentalYawRate = out.yaw_velocity.Data;        % Extract experimental yaw rate data

% Make sure the input vectors have the same length
minLength = min(length(experimentalSpeed), length(modelVelocity)); % Determine the minimum length
experimentalSpeed = experimentalSpeed(1:minLength); % Trim experimental speed data to the minimum length
modelVelocity = modelVelocity(1:minLength);         % Trim model velocity data to the minimum length

minLength = min(length(experimentalYawRate), length(modelYawRate)); % Determine the minimum length
experimentalYawRate = experimentalYawRate(1:minLength); % Trim experimental yaw rate data to the minimum length
modelYawRate = modelYawRate(1:minLength);               % Trim model yaw rate data to the minimum length

% Calculate correlation coefficient manually
correlation_velocity = corrcoef(experimentalSpeed, modelVelocity); % Compute correlation matrix
correlation_velocity = correlation_velocity(1, 2);  % Extract the correlation coefficient

correlation_yawrate = corrcoef(experimentalYawRate, modelYawRate); % Compute correlation matrix
correlation_yawrate = correlation_yawrate(1, 2);  % Extract the correlation coefficient

% Display correlation coefficients
disp(['Correlation Coefficient (Velocity): ', num2str(correlation_velocity)]);
disp(['Correlation Coefficient (Yaw Rate): ', num2str(correlation_yawrate)]);



%MORE CODE 
% Example experimental data (replace with your actual data)
experimentalSpeed = out.longitudinal_velocity.Data;
experimentalYawRate = out.yaw_velocity.Data;

% Calculate RMSE (Root Mean Squared Error)
rmse_velocity = sqrt(mean((experimentalSpeed - modelVelocity).^2));
rmse_yawrate = sqrt(mean((experimentalYawRate - modelYawRate).^2));

% Calculate MAE (Mean Absolute Error)
% Example experimental data (replace with your actual data)
experimentalSpeed = out.longitudinal_velocity.Data;
experimentalYawRate = out.yaw_velocity.Data;

% Calculate RMSE (Root Mean Squared Error)
rmse_velocity = sqrt(mean((experimentalSpeed - modelVelocity).^2));
rmse_yawrate = sqrt(mean((experimentalYawRate - modelYawRate).^2));

% Calculate MAE (Mean Absolute Error)
mae_velocity = mean(abs(experimentalSpeed - modelVelocity));
mae_yawrate = mean(abs(experimentalYawRate - modelYawRate));

disp(['Root Mean Squared Error (Velocity): ', num2str(rmse_velocity)]);
disp(['Mean Absolute Error (Velocity): ', num2str(mae_velocity)]);

disp(['Root Mean Squared Error (Yaw Rate): ', num2str(rmse_yawrate)]);
disp(['Mean Absolute Error (Yaw Rate): ', num2str(mae_yawrate)]);


