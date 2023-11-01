%% Basic Plotting in Matlab
x = -5:10; % values of the argument
y = x.^2 - 20; % values of the function
figure
plot(y)
figure
plot(x,y)
figure
plot(x,y,'k.-')



%% 
figure, hold on
t = linspace(0,2*pi,50); % 50 angles from 0 to 2*pi (in radians)
fill(sin(t),cos(t),[0.9137, 0.5882, 0.4784]) % circle centred at [0,0]
% with radius 1, filled with dark salmon colour.
fill(0.5*sin(t)+1.5,0.5*cos(t),[1 0.9412 0.9608])
% circle centred at [1.5,0] with radius 0.5, filled with lavender bush
% salmon colour.
fill(0.2*sin(t)+2.2,0.2*cos(t),[0.5020 0 0])
% circle centred at [2.2,0] with radius 0.2, filled with maroon colour.
grid on
axis equal

%% Weights
figure, hold on, axis equal off % set up the figure and format the axes
plot([0 0.8],[0 0.3],'k.-','markersize',200,'linewidth',8)
plot(0,0,'k.','markersize',250) % plot a second, larger marker

%% ZigZag
figure, hold on, axis equal off % set up the figure and format the axes
x = repmat([0,1],1,8); y = [1:8;1:8];
plot(x,y(:),'ks-','markersize',8,'MarkerFaceColor','y')

%% Lightning bolt
figure, hold on, axis equal off
x = [-2 3 2 4 3 5 4 6 4,2,3,1,2,0,1,-2]; % yellow X
y = [-1 1 1 2 2 3 3 4 4 3 3 2 2 1 1 -1]*3; % yellow Y
xsh = x + 1; xsh(1) = -2; xsh(end) = -2; % shadow X
ysh = y + 0.5; ysh(1) = -3; ysh(end) = -3; % shadow Y
fill(xsh,ysh,'k') % plot shadow first
fill(x,y,'y','edgecolor','k','linewidth',3) % plot yellow bolt

%% Christmas tree
x = [0:2:18;0 1:2:17]; y = [20:-2:1;20:-2:1]*3;
x = [-fliplr(x(:)') x(:)']; y = [fliplr(y(:)') y(:)'];
figure, hold on, axis equal off, fill(x,y,'g')

%% Bear face
brown = [0.4 0.2 0]; % colour definition
figure, hold on, axis equal off
t = linspace(0,2*pi,100);
fill(sin(t),cos(t),brown,'EdgeColor',brown) % face
fill(sin(t)*0.5+1,cos(t)*0.5+1,brown,'EdgeColor',brown)
fill(sin(t)*0.5-1,cos(t)*0.5+1,brown,'EdgeColor',brown)
fill(sin(t)*0.2+0.3,cos(t)*0.4,'w','EdgeColor','w')
fill(sin(t)*0.2-0.3,cos(t)*0.4,'w','EdgeColor','w')
fill(sin(t)*0.1+0.28,cos(t)*0.1-0.2,'k','EdgeColor','k')
fill(sin(t)*0.1-0.28,cos(t)*0.1-0.2,'k','EdgeColor','k')

%% Define the cube's vertices
vertices = [
    0, 0, 0;
    1, 0, 0;
    1, 1, 0;
    0, 1, 0;
    0, 0, 1;
    1, 0, 1;
    1, 1, 1;
    0, 1, 1
];

% Define the cube's edges (connecting vertices)
edges = [
    1, 2;
    2, 3;
    3, 4;
    4, 1;
    1, 5;
    2, 6;
    3, 7;
    4, 8;
    5, 6;
    6, 7;
    7, 8;
    8, 5
];

% Plot the cube
figure;
hold on;

% Plot vertices
plot3(vertices(:, 1), vertices(:, 2), vertices(:, 3), 'ro');

% Plot edges
for i = 1:size(edges, 1)
    line(vertices(edges(i, :), 1), vertices(edges(i, :), 2), vertices(edges(i, :), 3));
end

hold off;
% Set axis labels
xlabel('X');
ylabel('Y');
zlabel('Z');

% Set plot limits
axis equal; % Set axis scales to be equal for a proper cube view
grid on;

% Optionally, set the view angle
view(3); % 3D view

%% % Define the cube's vertices
vertices = [
    0, 0, 0;
    1, 0, 0;
    1, 1, 0;
    0, 1, 0;
    0, 0, 1;
    1, 0, 1;
    1, 1, 1;
    0, 1, 1
];

% Number of cubes
num_cubes = 5;

% Separation between cubes
separation = 12;

% Plot the cubes
figure;
hold on;

for i = 1:num_cubes
    % Translate the vertices to the correct position
    translated_vertices = vertices + [i-1, 0, 0] * separation;

    % Plot vertices
    plot3(translated_vertices(:, 1), translated_vertices(:, 2), translated_vertices(:, 3), 'ro');

    % Plot edges
    for j = 1:size(edges, 1)
        line(translated_vertices(edges(j, :), 1), translated_vertices(edges(j, :), 2), translated_vertices(edges(j, :), 3));
    end
end

hold off;

% Set axis labels
xlabel('X');
ylabel('Y');
zlabel('Z');

% Set plot limits
axis equal; % Set axis scales to be equal for a proper cube view
grid on;

% Optionally, set the view angle
view(3); % 3D view

%% % Define the cube's vertices
vertices = [
    0, 0, 0;
    1, 0, 0;
    1, 1, 0;
    0, 1, 0;
    0, 0, 1;
    1, 0, 1;
    1, 1, 1;
    0, 1, 1
];

% Define the cube's faces
faces = [
    1, 2, 6, 5;
    2, 3, 7, 6;
    3, 4, 8, 7;
    4, 1, 5, 8;
    1, 2, 3, 4;
    5, 6, 7, 8
];

% Plot the cube using patch
figure;
patch('Vertices', vertices, 'Faces', faces, 'FaceColor', 'r', 'EdgeColor', 'k');

% Set axis labels
xlabel('X');
ylabel('Y');
zlabel('Z');

% Set plot limits
axis equal; % Set axis scales to be equal for a proper cube view
grid on;

% Optionally, set the view angle
view(3); % 3D view

%% % Define the cube's vertices
vertices = [
    0, 0, 0;
    1, 0, 0;
    1, 1, 0;
    0, 1, 0;
    0, 0, 1;
    1, 0, 1;
    1, 1, 1;
    0, 1, 1
];

% Define the cube's faces
faces = [
    1, 2, 6, 5;
    2, 3, 7, 6;
    3, 4, 8, 7;
    4, 1, 5, 8;
    1, 2, 3, 4;
    5, 6, 7, 8
];

% Number of cubes
num_cubes = 5;

% Separation between cubes
separation = 7;

% Create a figure
figure;

% Loop to create and plot 5 cubes
for i = 1:num_cubes
    % Translate the vertices to the correct position
    translated_vertices = vertices + [0, (i - 1) * separation, 0];
    
    % Plot the cube using patch
    patch('Vertices', translated_vertices, 'Faces', faces, 'FaceColor', 'g', 'EdgeColor', 'k');
end

% Set axis labels
xlabel('X');
ylabel('Y');
zlabel('Z');

% Set plot limits
axis equal; % Set axis scales to be equal for a proper cube view
grid on;

% Optionally, set the view angle
view(3); % 3D view

%% % Create the main figure
fig = figure('Name', 'GUI Example', 'Position', [100, 100, 400, 300]);

% Create a panel to organize the buttons and plot
panel = uipanel('Title', 'Controls', 'Position', [0.05, 0.05, 0.9, 0.9]);

% Create the first button
button1 = uicontrol(panel, 'Style', 'pushbutton', 'String', 'Button 1', 'Position', [20, 200, 100, 30]);

% Create the second button
button2 = uicontrol(panel, 'Style', 'pushbutton', 'String', 'Button 2', 'Position', [20, 150, 100, 30]);

% Create a plot
axes1 = axes('Parent', panel, 'Position', [0.2, 0.1, 0.75, 0.7]);

% Set button callbacks to activate the plot
set(button1, 'Callback', @(src, event) plotData(axes1, 1));
set(button2, 'Callback', @(src, event) plotData(axes1, 2));

% Function to activate the plot
function plotData(axes, buttonNum)
    % Clear the previous plot
    cla(axes);
    
    % Create sample data for the plot
    x = 1:10;
    y = x * buttonNum;
    
    % Plot the data
    plot(axes, x, y);
    
    % Set labels
    xlabel('X-axis');
    ylabel(['Y-axis for Button ' num2str(buttonNum)]);
    
    % Title
    title(['Plot for Button ' num2str(buttonNum)]);
end



