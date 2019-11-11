clc
d=figure('position',[0,0,400,400]);
d.figure_name='Лабораторная работа №23';
set(d,'BackgroundColor',[1,1,1]);

str1=uicontrol(d,'style','text','position',[25,350,100,30],'string','Введите а:');
edit1=uicontrol(d,'style','edit','position',[25,300,100,30],'string','1');

str2=uicontrol(d,'style','text','position',[25,250,100,30],'string','Введите b:');
edit2=uicontrol(d,'style','edit','position',[25,200,100,30],'string','1');

//str3=uicontrol(d,'style','text','position',[25,150,100,30],'string','Введите c:');
//edit3=uicontrol(d,'style','edit','position',[25,100,100,30],'string','1');

Str4=uicontrol(d,'style','text','position',[210,320,150,30],'string',' ','HorizontalAlignment','center','Visible','on');
Str4.BackGroundColor='1|1|1';
Str4.ForeGroundColor='1|0|1';

button1=uicontrol(d,'style','pushbutton','string','sin(a)+cos(b)+ln(|c|)','position',[180,200,200,30],'CallBack','y');
function y
    a=eval(get(edit1,'string'));
    b=eval(get(edit2,'string'));
    c=eval(get(edit3,'string'));
    //if c==0 then
                //set(Str4,'string','Логарифма от нуля нет');
      //else
       // set(Str4,'string',' ');
        //k=sin(a)+cos(b)+log(abs(c));
        //Str5=uicontrol(d,'style','text','position',[210,100,150,30],'string','y=','HorizontalAlignment','center');
        //Str5.BackGroundColor='1|1|1';
        Str6=uicontrol(d,'style','text','position',[230,60,120,30],'string',string(k),'HorizontalAlignment','center');
        Str6.BackGroundColor='1|1|1';
    end
endfunction

button2=uicontrol(d,'style','pushbutton','string','Закрыть приложение','position',[220,10,150,30],'CallBack','cl');
function cl
    close(d);
endfunction
