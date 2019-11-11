clc;
f=figure();
set(f,'position',[200,20,400,300]);
set(f,'figure_name','Лабораторная работа №21');
set(f,'BackgroundColor',[0,1,1]);

rbt1=uicontrol(f,'style','radiobutton','string','sin(x)','value',0,'position',[70,225,70,30],'BackgroundColor',[1,1,1]);
rbt2=uicontrol(f,'style','radiobutton','string','cos(x)','value',0,'position',[250,225,70,30],'BackgroundColor',[1,1,1]);

button1=uicontrol(f,'style','pushbutton','string','Закрыть приложение.','position',[225,20,150,30],'CallBack','a1');
function a1
    close(f);
endfunction

button2=uicontrol(f,'style','pushbutton','string','Построить график.','position',[125,150,150,30],'BackgroundColor',[1,0,1],'CallBack','graf');
function graf
    if rbt1.Value==1 then 
                      scf(1),
                      x=[-10:0.001:10],
                      y=sin(x),
                      plot2d2(x,y',axesflag=4,leg='sin(x)'),
                      xgrid(),
                      set(rbt1,'value',0);
    end
    
    if rbt2.Value==1 then 
                      scf(2),
                      x=[-10:0.001:10],
                      y=cos(x),
                      plot2d2(x,y',axesflag=4,leg='cos(x)'),
                      xgrid(),
                      set(rbt2,'value',0);
    end
endfunction
