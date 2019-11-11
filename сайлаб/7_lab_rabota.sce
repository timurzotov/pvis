  clc
  disp('******Задание №7*******')
  disp('-----------№1----------')
  function [s,p]=f1(n)
      s=0;
      p=1;
      for i=1:n
          s=s+i;
          p=p*i;
      end
      disp(p,'p=',s,'s=')
  endfunction
  funcprot(0);
  f1(5);

  disp('-----------№2----------')
  function y=f(n)
      disp ('     x       y')
      for x=2:n
          y=sin(x);
          disp ([x,y])
      end
  endfunction
  f(7);

  disp('-----------№3----------')
  function [ks,s]=f(n,a,h,b)
      ks=0;
      s=0;
      x=a;
      for i=1:n
          y=cos(x);
          if y>b then ks=ks+1, s=y+s; 
          end
          x=x+h;
      end
      disp(s,'Сумма=')
      disp(ks,'Количество слагаемых=')
  endfunction
  f(10,0,0.3,-0.1);
  
