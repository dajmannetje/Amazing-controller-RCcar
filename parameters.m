LR = mean([3880,3850,3920]);
LF = mean([2855,2873,2875]);
RF = mean([2985,2972,2725]);
RR = mean([3814,3834,3909]);

Wheelbase = 53.5/100;

Trackwidth = 38/100;

ContactWidth = 5.5/100;

Wheel_r = 11.3/2/100;

WeightFront = LF+RF;
WeightRear = LR+RR;

WeightTotal = WeightRear + WeightFront;

a = (WeightRear/WeightTotal) * Wheelbase
b = (WeightFront/WeightTotal) * Wheelbase

Weightdistribution = a/Wheelbase;