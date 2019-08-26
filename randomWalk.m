
% Maximum number of steps:
numSteps = 10000;

f = figure('color','w'); hold('on');

x0 = [0,0];
for i = 1:numSteps
    % The random step:
    r = rand(1,2)-0.5;
    % Make the movement:
    x = x0 + r;
    % Plot this new step:
    plot([x0(1),x(1)],[x0(2),x(2)],'.-k');
    drawnow;
    % Store the new point as the starting point for the next step:
    x0 = x;
end
