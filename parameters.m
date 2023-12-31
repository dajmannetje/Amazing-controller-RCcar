%% parameter calculations

m_LR = mean([3880,3850,3920]); % Weight on left rear tire
m_LF = mean([2855,2873,2875]); % Weight on left front tire
m_RF = mean([2985,2972,2725]); % Weight on right front tire
m_RR = mean([3814,3834,3909]); % Weight on right rear tire

m_f = m_LF+m_RF;    % weight on the front axle in grams
m_r = m_LR+m_RR;    % weight on the rear axle in grams
m = m_r + m_f;      % total weight of the car in grams

l = 53.5/100;       % wheelbase in meters
c = 38/100;         % trackwidth in meters
W = 5.5/100;        % width of contact area in meters
R_wheel = 11.3/2/100;     % wheelradius in meters

a = (m_r/m) * l;    % length from the center of gravity to the front axle
b = (m_f/m) * l;    % length from the center of gravity to the rear axle
WD = m_r/m;         % fraction of weight on the rear tires
