//9f
clf
u=linspace(-%pi/2, %pi/2, 40); v=linspace(0,2*%pi, 20);
X=cos(u)'*cos(v);
Y=cos(u)'*sin(v);
Z=sin(u)'*ones(v);
plot3d3(X,Y,Z);
