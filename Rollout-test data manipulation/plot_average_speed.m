%% Test 1

speed_1 = transpose([speed_FL_1, speed_FR_1]);
speed_ave_1 = mean(speed_1);

figure
plot(time_1, speed_ave_1);
title('Average velocity of the rear tires over time in the Rollout test 1')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Test 2

speed_2 = transpose([speed_FL_2, speed_FR_2]);
speed_ave_2 = mean(speed_2);

figure
plot(time_2, speed_ave_2);
title('Average velocity of the rear tires over time in the Rollout test 2')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Test 3

speed_3 = transpose([speed_FL_3, speed_FR_3]);
speed_ave_3 = mean(speed_3);

figure
plot(time_3, speed_ave_3);
title('Average velocity of the rear tires over time in the Rollout test 3')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Test 4

speed_4 = transpose([speed_FL_4, speed_FR_4]);
speed_ave_4 = mean(speed_4);

figure
plot(time_4, speed_ave_4);
title('Average velocity of the rear tires over time in the Rollout test 4')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Test 5

speed_5 = transpose([speed_FL_5, speed_FR_5]);
speed_ave_5 = mean(speed_5);

figure
plot(time_5, speed_ave_5);
title('Average velocity of the rear tires over time in the Rollout test 5')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Test 6

speed_6 = transpose([speed_FL_6, speed_FR_6]);
speed_ave_6 = mean(speed_6);

figure
plot(time_6, speed_ave_6);
title('Average velocity of the rear tires over time in the Rollout test 6')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Test 7

speed_7 = transpose([speed_FL_7, speed_FR_7]);
speed_ave_7 = mean(speed_7);

figure
plot(time_7, speed_ave_7);
title('Average velocity of the rear tires over time in the Rollout test 7')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Test 8

speed_8 = transpose([speed_FL_8, speed_FR_8]);
speed_ave_8 = mean(speed_8);

figure
plot(time_8, speed_ave_8);
title('Average velocity of the rear tires over time in the Rollout test 8')
xlabel('Time (s)') 
ylabel('Velocity (m/s)') 

%% Tangent line values

% Test 1: (5.115, 4.2175), (9.725, 0.27)
a_1 = [5.115, 4.2175];
b_1 = [9.725, 0.27];
c_1 = b_1 - a_1

% Test 2: (4.845, 4.591), (8.855, 0.7915)
% Test 3: (3.06, 4.688), (6.995, 0.9245)
% Test 4: (3.9, 4,925), (8.415, 0.646)
% Test 5: (4.435, 5,487), (10.355, 0.116)
% Test 6: (4.015, 3.835), (8.025, 0.4015)
% Test 7: (4.83, 4.7965), (9.615, 0.41)
% Test 8: (4,4.8525), (8.61, 0.533)



%% Drag Force
% m = 13.497;
% a = ave(tan_1, tan_2, tan_3, tan_4, tan_5, tan_6, tan_7, tan_8);
% 
% F_d = m*a;