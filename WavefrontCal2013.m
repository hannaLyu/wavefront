% setup a empty map
map=zeros(13,21);

% setup first obstacle range
map(6:10,4:6)=ones(5,3);

% setup second obstacle range
map(4:9, 10:11)= ones(6,2);
map(8:9, 12:14)= ones(2,3);
map(5:9, 15:17)= ones(5,3);

% goal and start pose
goal = [6,13];
start = [12,3];

% clculaiton part
mapnew= f_Wavefront(map, start, goal)

% the initial value of goal is 2, so it needs to be removed!
ShortestRoute= mapnew(start(1),start(2))-2 