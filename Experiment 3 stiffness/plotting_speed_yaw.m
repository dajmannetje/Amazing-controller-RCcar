%% Load all data
for i = 1:8
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

speed_ave = [speed_1, speed_2, speed_3, speed_4, speed_5];
yawrate = [yawrate_1, yawrate_2, yawrate_3, yawrate_4, yawrate_5];

figure
scatter(speed_ave, -yawrate, '.');

grid on
xlim([0 4])
ylim([0 2.5])

title('Yaw rate per longitudinal velocity', 'Interpreter', 'latex')
xlabel('Velocity (m/s)', 'Interpreter', 'latex') 
ylabel('Yaw Rate (rad/s)', 'Interpreter', 'latex') 
% legend({'Front-right tire','Front-left tire'},'Location','northeast', 'Interpreter', 'latex')