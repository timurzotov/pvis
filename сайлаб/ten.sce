clf
xname('10.1')
x=-5:0.25:5
y=sin(x.^2)+3
z=cos(2*x)
plot(x,y,x,z)
legend(['sin(x.^2)+3';'cos(2*x)'])
xtitle('Графики функций','y','x')

scf
x=[-5:0.25:5];
y=[sin(x^2)+3;cos(2*x)]
xgrid
xname('График функций y=sin(2*x+5) и z=cos(2*x)') 
plot2d2(x,y',axesflag=5,leg='sin((x.^2)+3)@cos(2*x)');

scf;
xname('10.2)')
x=[-4*%pi:0.3:4*%pi]
y=sin(2*x+5)
xgrid()
plot2d2(x,y)
legend('sin(2*x+5)', 1)

scf;
xname('10.3)')
x=[0.1:0.2:4*%pi]
y=(sin(x).^2)-log(3*x)
xgrid()
plot2d(x,y)
plot(x,y); legend('y=(sin(x^2))-log10(3*x)')
xtitle('Графики функций y = sin(x^2)+3 и z = cos(2*x)','y','x')

scf;
xname('10.4)')
x=[0.1:0.25:4*%pi]
y=sin(x.^2)+3
z=cos(2*x)
u=sin(2*x+5)
v=sin(x).^2-log(3*x)
subplot(2,2,1); plot (x,y); legend('y=sin(x^2)+3');
subplot(2,2,2); plot (x,z); legend('z=cos(2x)');
subplot(2,2,3); plot (x,u); legend('y=sin(x2+5)');
subplot(2,2,4); plot (x,v); legend('y=sin(x)^2-log(3x)');

scf
xname('10.5)')
t=[0:0.1:50]
y=sin(t)
z=cos(t)-0.5
v=sin(2*t)
comet(t,[y;z;v]',"colors", [color("navy blue")color("orange")color("pink")])

scf;
xname('*10.6');
x=-6.28:0.02:6.28;
y=sin(x/2);
plot(x,y,'m-');
mtlb_hold('on');
z=cos(x);
plot(x,z,'gx');
v=exp(cos(x));
plot(x,v,'b*');

scf;
xname('*10.7');
x = 0:0.1:3;
y = 0:0.1:4;
[xx,yy] = meshgrid(x,y);
zz = xx.*yy;
surf(xx,yy,zz)

scf;
xname('10.8')
