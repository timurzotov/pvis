clc;
d=figure();//создаем окно
set(d,'position',[200,20,680,500]);//местоположение и размеры окна
set(d,'figure_name','Лабораторная работа №19');//заголовок окна
set(d,'BackgroundColor',[0,0,1]);//цвет окна
button1=uicontrol(d,'style','pushbutton','string','Изменить заголовок окна.','position',[40,400,300,60],'BackgroundColor',[1,1,1],'CallBack','a1');
function a1
    set(d,'figure_name','Заголовок окна изменен.');
endfunction

button2=uicontrol(d,'style','pushbutton','string','Изменение цвета кнопки/окна.','position',[360,400,300,60],'BackgroundColor',[1,1,1],'CallBack','a2');
function a2
    set(button2,'BackgroundColor',[0,1,1]);
    set(d,'BackgroundColor',[0,1,1]);
endfunction

button3=uicontrol(d,'style','pushbutton','string','Перемещение окна и изменение ее размера.','position',[40,100,300,60],'BackgroundColor',[1,1,1],'CallBack','a3');
function a3
    set(d,'position',[30,100,1320,500])
endfunction

button4=uicontrol(d,'style','pushbutton','string','Закрыть приложение.','position',[360,100,300,60],'BackgroundColor',[1,1,1],'CallBack','a4');
function a4
    close(d);
endfunction
