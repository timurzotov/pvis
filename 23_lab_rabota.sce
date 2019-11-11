
clc
d=figure('position',[0,0,650,400]);
d.figure_name='Лабораторная работа №23';
set(d,'BackgroundColor',[1,0.9,0.9]);

str1=uicontrol(d,'style','text','position',[25,350,100,30],'string','Введите а:');
edit1=uicontrol(d,'style','edit','position',[25,300,100,30],'string','1');

str2=uicontrol(d,'style','text','position',[155,350,100,30],'string','Введите b:');
edit2=uicontrol(d,'style','edit','position',[155,300,100,30],'string','1');

str3=uicontrol(d,'style','text','position',[300,350,100,30],'string','Введите c:');
edit3=uicontrol(d,'style','edit','position',[300,300,100,30],'string','1');

Str4=uicontrol(d,'style','text','position',[450,110,150,30],'string',' ','HorizontalAlignment','center','Visible','on');
Str4.BackGroundColor='1|1|1';
Str4.ForeGroundColor='1|0|1';

button1=uicontrol(d,'style','pushbutton','string','sin(a)+cos(b)+ln(|c|)','position',[90,200,250,50],'CallBack','y');
function y
    a=evstr(get(edit1,'string'));
    b=evstr(get(edit2,'string'));
    c=evstr(get(edit3,'string'));
    if c==0 then
                set(Str4,'string','Логарифма от нуля нет');
      else
       set(Str4,'string',' ');
        k=sin(a)+cos(b)+log(abs(c));
        Str5=uicontrol(d,'style','text','position',[90,110,150,30],'string','y=','HorizontalAlignment','center');
        Str5.BackGroundColor='1|1|1';
        Str6=uicontrol(d,'style','text','position',[230,110,110,30],'string',string(k),'HorizontalAlignment','center');
        Str6.BackGroundColor='1|1|1';
    end
endfunction

button3=uicontrol(d,'style','pushbutton','string','Очистить','position',[450,320,150,50],'CallBack','cc');
function d=cc
    set(edit1,'string','')
    set(edit2,'string','')
    set(edit3,'string','')
    set(Str4,'string','')
    //set(Str5,'string','')
    //set(Str6,'string','')
endfunction

button2=uicontrol(d,'style','pushbutton','string','Закрыть приложение','position',[420,10,200,50],'CallBack','cl');
function cl
    close(d);
endfunction
