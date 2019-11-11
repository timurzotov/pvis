// Задание 6
clc
disp('Задание 1');
x=0.397;
if x^2<=25*cos(x^3) then y=sin(3*x)
                    else y=(2*x-tan(x))/(sqrt(x^2+2));
end
disp(y,'y(0.397)=');

disp('****************************************************');
disp('Задание 2');
k=0;
x=[1,2,3,-5,-8,0,-9,-15];
n=length(x);
for l=1:n
    if x(l)<0 then k=k+1;
    end
end
disp(k,'Количество отрицательных элементов =');

disp('****************************************************');
disp('Задание 3');
k=0;
disp('Введите 10 произвольных чисел');
for l=1:10
    numb='x['+string(l)+']='
    x(l)=input(numb);
    if x(l)<0 then k=k+1;
    end
end
disp(k,'Количество отрицательных элементов =');

disp('****************************************************');
disp('Задание 4');
summ=0;
k=0;
l=0;
disp('Введите числа');
while (summ<=10) 
    l=l+1;
    x=input('x['+string(l)+']=');
    if modulo (x,2)==0 then summ=summ+x; k=k+1;
    end            
end
disp(k,'Количество слагаемых=', summ, 'Сумма=');

disp('****************************************************');
disp('Задание 5');
day=0;
while (day==0)
    D=input('Введите число месяца D = ');
    if (D>31) | (D<=0) then disp('В месяце 31 день, введите число еще раз')
                       else day=1; 
    end                  
end                  
k=7;
rest=D-int(D/k)*k;
select rest  
    case 1 then disp('Понедельник');
    case 2 then disp('Вторник');
    case 3 then disp('Среда');
    case 4 then disp('Четверг');
    case 5 then disp('Пятница');
    case 6 then disp('Суббота');
    case 7 then disp('Воскресенье');
end
