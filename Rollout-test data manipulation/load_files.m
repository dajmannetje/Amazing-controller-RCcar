%% Load all data
for i = 1:8
    if i == 1
        load('attempt_1.mat')
        time_1 = time;
        speed_FL_1 = speed_FL;
        speed_FR_1 = speed_FR;
        speed_RL_1 = speed_RL;
        speed_RR_1 = speed_RR;        
    elseif i == 2
        load('attempt_2.mat')
        time_2 = time;
        speed_FL_2 = speed_FL;
        speed_FR_2 = speed_FR;
        speed_RL_2 = speed_RL;
        speed_RR_2 = speed_RR; 
    elseif i == 3
        load('attempt_3.mat')
        time_3 = time;
        speed_FL_3 = speed_FL;
        speed_FR_3 = speed_FR;
        speed_RL_3 = speed_RL;
        speed_RR_3 = speed_RR; 
    elseif i == 4
        load('attempt_4.mat')   
        time_4 = time;
        speed_FL_4 = speed_FL;
        speed_FR_4 = speed_FR;
        speed_RL_4 = speed_RL;
        speed_RR_4 = speed_RR; 
    elseif i == 5
        load('attempt_5.mat')
        time_5 = time;
        speed_FL_5 = speed_FL;
        speed_FR_5 = speed_FR;
        speed_RL_5 = speed_RL;
        speed_RR_5 = speed_RR; 
    elseif i == 6
        load('attempt_6.mat')
        time_6 = time;
        speed_FL_6 = speed_FL;
        speed_FR_6 = speed_FR;
        speed_RL_6 = speed_RL;
        speed_RR_6 = speed_RR; 
    elseif i == 7
        load('attempt_7.mat')   
        time_7 = time;
        speed_FL_7 = speed_FL;
        speed_FR_7 = speed_FR;
        speed_RL_7 = speed_RL;
        speed_RR_7 = speed_RR; 
    elseif i == 8
        load('attempt_8.mat')  
        time_8 = time;
        speed_FL_8 = speed_FL;
        speed_FR_8= speed_FR;
        speed_RL_8 = speed_RL;
        speed_RR_8 = speed_RR; 
    end
end


% filename = ["attempt_1.mat", "attempt_2.mat", "attempt_3.mat", "attempt_4.mat"]
% speed_FL_i = []
% 
% for i = 1:4
%         load(filename[i])
%         time_i = time;
%         speed_FL[i,:] = speed_FL;
%         speed_FR[i,:] = speed_FL;
%         speed_RL[i,:] = speed_FL;
%         speed_RR[i,:] = speed_FL;
% end

%% Average values

% x_mean=sum([speed_FL_1, speed_FL_2, speed_FL_3, speed_FL_4, speed_FL_5, speed_FL_6, speed_FL_7, speed_FL_8])./8;
% plot(x_mean, time);

