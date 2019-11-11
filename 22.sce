//Задание 22
clc
d = figure();
set(d, 'position', [10 100 700 500]);
set(d, 'figure_name', 'Лабораторная работа №22');
set(d,'BackgroundColor',[1,0.9,0.9]);

button1 = uicontrol(d, 'style', 'pushbutton', 'string', 'Построить график 1', 'position', [20 5 200 20], 'background', [1 1 1], 'callback', 'grafik1');
button2 = uicontrol(d, 'style', 'pushbutton', 'string', 'Построить график 2', 'position', [250 5 200 20], 'background', [1 1 1], 'callback', 'grafik2');
button3 = uicontrol(d, 'style', 'pushbutton', 'string', 'Выход', 'position', [480 5 100 20], 'background', [1 1 1], 'callback', 'closewindow');

flag1 = uicontrol(d, 'style', 'checkbox', 'position', [40 30 150 20], 'string', 'Синий v / Красный o', 'background', [1 1 1], 'value', 0);
flag2 = uicontrol(d, 'style', 'checkbox', 'position', [270 30 150 20], 'string', 'Черный v / Зеленый o', 'background', [1 1 1], 'value', 0);


funcprot(0)
function  closewindow()
    close(d);
endfunction


funcprot(0)
function  grafik1()
    x=1:0.1:10;
            if flag1.value == 0 then
                scf(1);
                f=get("current_figure");
                f.figure_position=[650,100];
                plot(x, (sin(x.^2)+5), '-r');
                xgrid(5); xtitle('График функции (sin(x^2)+5)');
            else
                scf(1);
                f=get("current_figure");
                f.figure_position=[650,100];
                plot(x, (sin(x.^2)+5), '-b');
                xgrid(2); xtitle('График функции (sin(x^2)+5)');
            end
endfunction

function  grafik2()
    x=1:0.1:10;
            if flag2.value == 0 then
                scf(d);               
                plot(x, x.^2, '^g');
                xgrid(1); xtitle('График функции x^2');
            else
                scf(d);           
                plot(x, x.^2, '-k');
                xgrid(1); xtitle('График функции x^2');
            end
endfunction
