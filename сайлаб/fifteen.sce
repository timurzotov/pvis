clc
disp('15.1','ЗАДАНИЕ №15')
function w=f(x,y)
    w=(y+(3/(x+1)))/x
endfunction
//clc
scf
format('v',5)
x0=3; y0=2
x=[3:1:10]
z=ode(y0,x0,x,f)
xname('15.1')
plot(x,z,'-*'); xgrid()
disp(x);
disp(z)

disp('15.2', '********************************')
function w=f(x,y)
    w=(y+cos(x)*x^2)/2
endfunction
//clc
scf
format('v',5)
x0=2.5; y0=2.3
x=[2.5:0.5:9]
z=ode(y0,x0,x,f)
xname('15.2')
plot(x,z,'-*'); xgrid()
disp(x)
disp(z)
