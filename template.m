clear
clc

%% Template
% This scripts is a template for how this program can be used.
% 1. Define the target payload and altitude. 
% 2. Then contruct the two stages according to:
%       stage_n = Stage(m_0, m_p, V_eff, A, C_d)
% 3. Set height and amount for programmed turn of first stage (meters, radians)
% 4. Specify whether first stage is reusable by setting
%       first_stage_should_land ,
%       first_stage_landing_duration and
%       fuel_left_in_first_stage
% 5. Construct an array of the used burnrates: 
%       burn_rates = [first_stage_pre_turn, first_after_turn, max_of_second_stage]
% 6. Set the plot_name variable to a distinct name identifiable to your
%    rocket.
% 7. Run program, read print-out, observe results. Tweak rocket.
%
% NOTES:
% - If program runs for long time the rocket has too low thrust and can't
% gain altitue.
% - The second stage uses an impulse delta V to get to the right orbit,
% here you might read negative values for the remaining fuel. This means
% that you do not have enough fuel for last delta V to get the right speed,
% even though you reach the right altitude.

clear all
close all

%% Mission parameters

m_payload = 1000;
target_altitude = 600000;

%% Specify rocket parametrers
% This rocket template is a scaled version of the first two stages of the
% Vega-rocket. It is expendable.

% Stage(m_0, m_p, V_eff, A, C_d)
stage_1 = Stage(137624, 87710, 2746, (3./2)^2*pi, 0.5);
stage_2 = Stage(41381, 36381, 4000, (1.9/2)^2*pi, 0.5);

programmed_turn_height = 5000;
programmed_turn_angle = -5*pi/180;

first_stage_should_land = false;
first_stage_landing_duration = 0; % Approximate duration for the final landing burn (5-10 seconds)

fuel_left_in_first_stage = 0.1; % At separation. eg. 0.05 for expendable, 0.15 for reusable
burn_rates = [610, 610, 110]; % First stage before turn, first after turn, max of second stage

%% Compute

drift_duration = 1000; % Seconds to plot the payload in the right orbit.
    plot_name = "template";

simulate_two_stage_rocket(stage_1, stage_2, burn_rates, fuel_left_in_first_stage, ...
        programmed_turn_height, programmed_turn_angle, ...
        first_stage_should_land, first_stage_landing_duration, ...
        target_altitude, m_payload, ...
        drift_duration, plot_name)
    
    
    
    
    
    
    