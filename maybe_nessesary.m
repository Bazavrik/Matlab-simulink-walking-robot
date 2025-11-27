%%  myworld = vredit()

tableq.length = 50;
tableq.thickness = 0.01;
tableq.color = [0.5 0.5 0.5];

leg.width1 = 0.02;       % 1st link
leg.length1 = 0.2;
leg.width2 = 0.02;       % 2nd link
leg.length2 = 0.2;
leg.width3 = 0.02;       % 3rd link
leg.length3 = 0.2;

robot.length = 0.8;
robot.width = 0.6;
robot.thickness = 0.05;
robot.z = leg.length1+leg.length3+0.03;
robot.leg_lx = robot.length * 0.4;
robot.leg_rx = robot.length * 0.4;

robot.offset = [-robot.width/2, robot.leg_lx;...          % lf
                robot.width/2, robot.leg_rx;...           % rf
                -robot.width/2, -robot.leg_lx;...         % lb
                robot.width/2, -robot.leg_rx];            % rb
load("leg_buses.mat");

step_h = 0.1;
step_t = 20;
step_s = 10;

init_turn = 2;
init_pos = [step_s/4;-step_s/4;-step_s*3/4;-step_s/4];
step_n = 4;
sim_time = step_t * (step_n + 1/6);                       % 3s st