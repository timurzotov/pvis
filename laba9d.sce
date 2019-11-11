//9d
clf
[x,y]=meshgrid(-2:0.2:2, -3:.2:3);
z=x.^2+y.*sin(x);
surf(x,y,z)
