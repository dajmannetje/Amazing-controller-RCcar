%% parameter calculations
LR = mean([3880,3850,3920]); % Weight on left rear tire
LF = mean([2855,2873,2875]); % Weight on left front tire
RF = mean([2985,2972,2725]); % Weight on right front tire
RR = mean([3814,3834,3909]); % Weight on right rear tire

WeightFront = LF+RF; % weight on the front axle in grams
WeightRear = LR+RR; % weight on the rear axle in grams
WeightTotal = WeightRear + WeightFront; % total weight of the car in grams

Wheelbase = 53.5/100; % wheelbase in meters
Trackwidth = 38/100; % trackwidth in meters
ContactWidth = 5.5/100; % width of contact area in meters
Wheel_r = 11.3/2/100; % wheelradius in meters

a = (WeightRear/WeightTotal) * Wheelbase % length from the center of gravity to the front axle
b = (WeightFront/WeightTotal) * Wheelbase % length from the center of gravity to the rear axle
Weightdistribution = a/Wheelbase; 

%%