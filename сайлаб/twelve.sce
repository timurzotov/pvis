xname('ЗАДАНИЕ 12.1')
clc
x=-5:.1:5; y=x^3/3-x^2/2-6*x+1;
plot2d(x,y,axesflag=5); xgrid()
xtitle('График функции: y=x^3/3-x^2/2-6*x+1', 'x', 'y'),
clc
function y= gg(x)
    if q==1 then y=x.^3/3-x.^2/2-6*x+1 else
        y=-(x.^3/3-x.^2/2-6*x+1) end
endfunction
funcprot(0);
function [f,g,r]=z(x,r)
    f=gg(x)
    g=numderivative(gg,x)
endfunction
x0=-2; q=3; //max = -2
[fmax,xmax]=optim(z,x0)
xmax,fmax=-fmax
x0=3;q=1;
[fmin,xmin]=optim(z,x0)

//xmin, fmin, xmax, fmax

