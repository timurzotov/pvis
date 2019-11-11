clc
clf
disp('13.4')
x=[1:10];
y=[1 2 4 2 3 5 4 6 3 5];
plot(x,y,'r*'),xgrid()
a=gca(); 
a.x_location = "origin"; 
a.y_location = "origin";                                           
sleep(1200)
z=[x;y]
xi=1:0.25:10
yi=interpln(z,xi);
plot(xi,yi,'m'),legend('initial','linear', 4), xgrid()
sleep(1200)
yi=interp1(x,y,xi,'nearest');
plot(xi,yi,'r'),legend('initial','nearest',4),xgrid()
sleep(1200)
yi=interp1(x,y,xi,'spline');
plot(xi,yi,axesflag=5),legend('initial','linear','nearest','spline',4),xgrid()

xname('13.4')                                                      
