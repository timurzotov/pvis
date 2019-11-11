    //laba8
clc 
disp('******Задание 8.1*******') 
function [x1,x2]=f(a,b,c); 
  x=poly(0,'x') 
  k=a*x^2+b*x+c 
  disp(k) 
  if a==0 then x1=-c/b; 
               disp(x1,'x='); 
          else 
              
  d=b^2-4*a*c; 
  x1=(-b+sqrt(d))/2*a; 
  x2=(-b-sqrt(d))/2*a; 
  disp('x1='); disp(x1); 
  disp('x2='); disp(x2); 
  end 
endfunction 

funcprot(0); 
f(0,5,10);
disp('__________________')
f(1,5,6);
disp('__________________')
f(1,2,1);
disp('__________________')
f(1,2,40);

//clc


