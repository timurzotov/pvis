  clc
  disp('***********Задание №5***********')
  disp('---------------№1---------------')
  disp('    x      y')
  for x=1:2:11;
      disp([x,sin(x^3)])
  end

  disp('---------------№2---------------')
  s=0;
  for x=2:0.5:8;
      s=s+x^2+cos(x);
  end
  disp(s,'Сумма=')
  
  disp('---------------№3---------------')
  s=0;i=0;
  for x=1:0.4:5
      y=0.03*x^2-sin(x)*cos(5*x);
      if y<0 s=s+y, i=i+1; end
  end
  disp(s,'Сумма отрицательных значений=', i, 'Количество слагаемых=')
  
  disp('---------------№4---------------')
  s=0; 
  i=0; 
  disp('    i        a         s') 
  while s<7 
        a=rand(1,1) 
        if (a>0.2)&(a<0.7) then 
                           s=s+a; 
                           i=i+1; 
                           if (s<=7) then disp([i,a,s]);end 
        end 
  end
