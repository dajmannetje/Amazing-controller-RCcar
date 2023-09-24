clear all
close all
clc

test = load("experiment 1.mat")
time = test.time
Throttle_percent = timeseries(test.throttle_in,time);
Steer_percent = timeseries(test.steer,time);

%plot(out.longitudinal_velocity,out.yaw_velocity)