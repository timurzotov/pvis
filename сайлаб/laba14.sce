clc
disp('14.1')
format(8)
x=1:.01:5
y=(2*(sin(x).^2))
J1=inttrap(x,y)
disp(J1)
J2=intsplin(x,y)
disp(J2)

disp('*******************')
disp('14.2')
x=[0 1 3 4 6 9 10]
y=[1 3 2 3 5 3 4]
J=inttrap(x,y)
disp(J)

disp('*******************')
disp('14.3')
function y=f(x)
    y=x.^2+sin(x)
endfunction
J=intg(-10,8,f)
disp(J)
J=integrate('x.^2+sin(x)','x',-10,8)
disp(J)
x=-10:0.099997386:8
y=(x.^2+sin(x))
J=inttrap(x,y)
disp(J)

disp('*******************')
disp('14.4')
x=[1 3 4 6 9 10]
y=(log(x))
J1=inttrap(x,y)
disp(J1)
J2=intsplin(x,y)
disp(J2)
