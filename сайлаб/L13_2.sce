clc
clf
disp('13.2')
xname('13.2')

x=[1:0.5:5];
y=[1 2 4 2 3 5 4 6 3];
z=[x;y] 
plot(x,y,'r*'),xgrid()
xi=0:0.5:6;
a=gca(); 
a.x_location = "origin"; 
a.y_location = "origin"; 
sleep(1200) 

function zr=p(c,z)
zr=z(2)-c(1)-c(2)*z(1)-c(3)*z(1).^2-c(4)*z(1).^3 
endfunction
                                            
c=[0;0;0;0];
[a,S]=datafit(p,z,c)
disp(S,'S3=')
disp(a,'a3=')
p=poly([a],'x','c')
disp(p,'Q3(x)=') 

pxi=a(1)+a(2)*xi+a(3)*xi.^2+a(4)*xi.^3
plot(xi,pxi),xgrid()                      

