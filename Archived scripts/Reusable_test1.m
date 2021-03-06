clear all
close all
    
%% Mission parameters

m_payload = 1000; % Our payload
target_altitude = 600000;

%% Scaled Vega (first two stages)
% This rocket is a scaled version of the first two stages of the
% Vega-rocket.

% Stage(m_0, m_p, V_eff, A, C_d)
stage_1 = Stage(152728, 87710, 2766, (3./2)^2*pi, 0.5);
stage_2 = Stage(47438, 41838, 4155, (1.9/2)^2*pi, 0.5);

programmed_turn_height = 5000;
programmed_turn_angle = -5*pi/180;
first_stage_should_land = true;
first_stage_landing_duration = 10; % in seconds
burn_rates = [770, 770, 110]; % First stage before turn, first after turn, max of second stage
fuel_left_in_first_stage = 0.1; % At separation

%% Compute

drift_duration = 300; % Seconds to plot the payload in the right orbit.
plot_name = "Reusable launch vehicle";

simulate_two_stage_rocket(stage_1, stage_2, burn_rates, fuel_left_in_first_stage, ...
        programmed_turn_height, programmed_turn_angle, ...
        first_stage_should_land, first_stage_landing_duration, ...
        target_altitude, m_payload, ...
        drift_duration, plot_name)
    
    
    
    
    
    
    