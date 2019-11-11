clc;
d=figure();//создаем окно
set(d,'position',[0,0,720,720]);//местоположение и размеры окна
set(d,'figure_name','билет №1');//заголовок окна
set(d,'BackgroundColor',[0,0.6,0.6]);//цвет окна
button1=uicontrol(d,'style','pushbutton','string','Открыть окно.','position',[10,600,300,60],'BackgroundColor',[0,0.9,0.9],'CallBack','a1');

function a1
  button2=uicontrol(f,'style','pushbutton','string','Построить график.','position',[195,175,150,30],'BackgroundColor',[1,0.57,0.57],'CallBack','graf');
function graf
     x=1:0.1:10;
            if button2.value == 0 then
                scf;
                f=get("current_figure");
                f.figure_position=[650,100];
                plot(x, (sin(x., '-r');
                xgrid(5); xtitle('График функции (sin(x)');
    
                      
    end
endfunction
endfunction
