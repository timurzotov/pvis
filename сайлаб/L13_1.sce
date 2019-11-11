clc
clf
funcprot(0)
disp('13.1')
x=[-2:0.3:6];
y=x+cos(x-2);
z=[x;y];
plot(x,y,'r*'),xgrid();
xi=-3:0.3:7;
a=gca();
a.x_location = "origin"; 
a.y_location = "origin";                                           
xname('13.1')

disp('Полином 1 степени:')
function zr=p(c,z)
zr=z(2)-c(1)-c(2)*z(1)
endfunction

sleep(1200)
c=[0;0];
[a,S]=datafit(p,z,c)
disp(S,'S1=')
disp(a,'a1=')
p=poly([a],'x','c');
disp(p,'Q1(x)=')


pxi=a(1)+a(2)*xi
plot(xi,pxi,'m'), xgrid()

disp('Полином 2 степени:')
sleep(1200)
function zr=p(c,z)
zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1).^2
endfunction

c=[0;0;0];
[a,S]=datafit(p,z,c)
disp(S,'S2=')
disp(a,'a2=')
p=poly([a],'x','c');
//disp(p,'Q2(x)=')

pxi=a(1)+a(2)*xi+a(3)*xi.^2
plot(xi,pxi,'g'), xgrid()

disp('Полином 3 степени:')
sleep(1200)
function zr=p(c,z)
zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1).^2-c(4)*z(1).^3 
endfunction

c=[0;0;0;0];
[a,S]=datafit(p,z,c)
disp(S,'S3=')
disp(a,'a3=')
p=poly([a],'x','c');
disp(p,'Q3(x)=')

pxi=a(1)+a(2)*xi+a(3)*xi.^2+a(4)*xi.^3
plot(xi,pxi,axesflag=5),legend('x+cos(x-2)','n=1','n=2','n=3',4)



