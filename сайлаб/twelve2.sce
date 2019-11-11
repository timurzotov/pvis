clc
xname('ЗАДАНИЕ 12.2')
scf;
x=0:.1:5; y=0.5*sin(3*x+5)+0.3*cos(2*x+6);
plot2d(x,y,axesflag=5); xgrid()
xtitle('График функции: y=0.5*sin(3*x+5)+0.3*cos(2*x+6)', 'x', 'y')
clc
function y= gg(x)
    if q==1 then y=0.5*sin(3*x+5)+0.3*cos(2*x+6) else
        y=-(0.5*sin(3*x+5)+0.3*cos(2*x+6)) end
endfunction
funcprot(0);
function [f,g,r]=z(x,r)
    f=gg(x)
    g=numderivative(gg,x)
endfunction
x0=2.1; q=1;
[fmin,xmin]=optim(z,x0)

x0=4.2; q=1;
[fmin2,xmin2]=optim(z,x0)

x0=0.8; q=3;
[fmax,xmax]=optim(z,x0)
xmax,fmax=-fmax

x0=3.1; q=3;
[fmax2,xmax2]=optim(z,x0)
xmax2,fmax2=-fmax2
//xmin,fmin,xmin2,fmin2,xmax,fmax,xmax2,fmax2
