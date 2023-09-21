b = 38;
h = 53.5;
C_h = 22.8;
Ratio = 53.5/22.8;
normalIn = ((b * h^3)/12) + b * h * (1/2)^2; %Inertia
In = ((b * h^3)/12) + b * h * (1/Ratio)^2; %Inertia



%%
clear all

a = 0.3066;
b= 0.2284;
w = 0.38;

mfl = 2.8677;
mfr = 2.894;
mrl = 3.8833;
mrr = 3.8523;
total_m = mfl+mfr+mrl+mrr;


I = ( ((a*0.75)^2) + ((w/4)^2) )*mfl + ( ((a*0.75)^2) + ((-w/4)^2) )*mfr + ( ((-b/2)^2) + ((w/4)^2) )*mrl + ( ((-b/2)^2) + ((-w/4)^2) )*mrr

normal_rect = 0.4843;

I_parallel = normal_rect + total_m*(( ((a+b)/2)-b )^2)
  







