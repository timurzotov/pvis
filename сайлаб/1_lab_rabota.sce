  //Задание №1
  clc
  x=poly(0,'x');
  //1.1
  disp('*******Производные**********')
  disp('№1.1')
  d1=derivat(x^3+5*x^2-10);
  disp(d1, 'd1=')
  
  //1.2
  disp('№1.2')
  d2=derivat(derivat(x^3+5*x^2-10));
  disp(d2,'d2=')
  
  //1.3
  disp('№1.3')
  d3=derivat(derivat(derivat(x^3+5*x^2-10)));
  disp(d3,'d3=')
  
  //1.4
  disp('№1.4')
  d4=derivat((2*x+10)/(x^3+5*x^2-10));
  disp(d4,'d4=')
  
  //1.5
  disp('*********Интеграллы*********')
  disp('№1.5')
  j1=integrate('x^3+5*x^2-10','x',2,4);
  disp(j1,'j1=')
  
  //1.6
  disp('№1.6')
  j2=integrate('sin(x^2)+cos(x)^3','x',0,%pi);
  disp(j2,'j2=')
  
  //1.7
  disp('№1.7')
  j3=integrate('(2*log(x)-1/(3*x))','x',3,5);
  disp(j3,'j3=')
  

