clc
clf
disp('13.3')
x=[-5:10];
y=sin(x+6);
plot(x,y,'r*'), xgrid();
a=gca(); 
a.x_location = "origin"; 
a.y_location = "origin"; 
sleep(1500)
z=[x;y]
xi=-6:0.25:11
yi=interpln(z,xi);
plot(xi,yi), legend('initial','linear', 4);
xname('13.3')

