clc;
f=figure();
set(f,'position',[200,20,400,400]);
set(f,'figure_name','Лабораторная работа №20');
set(f,'BackgroundColor',[0,1,1]);

button1=uicontrol(f,'style','pushbutton','string','Закрыть приложение.','position',[200,10,150,30],'CallBack','a1');
function a1
    close(f);
endfunction

a=0;
while (a==0)

Str1=uicontrol(f,'style','text','position',[125,280,150,60],'string','Метка 1','Visible','off');
xpause(700000);
Str1.Visible='on';
Str1.HorizontalAlignment='left';
Str1.VerticalAlignment='top';
Str1.ForeGroundColor='0|0|1';
Str1.BackGroundColor='1|1|1';
Srt1.FontAngle='italic';
Str1.FontSize=15;

Str2=uicontrol(f,'style','text','position',[125,190,150,60],'string','Метка 2','Visible','off');
xpause(700000);
Str2.Visible='on';
Str2.HorizontalAlignment='center';
Str2.VerticalAlignment='middle';
Str2.ForeGroundColor='1|0|0';
Str2.BackGroundColor='0|1|0';
Srt2.FontAngle='serif';
Str2.FontSize=20;

Str3=uicontrol(f,'style','text','position',[125,100,150,60],'string','Метка 3','Visible','off');
xpause(700000);
Str3.Visible='on';
Str3.HorizontalAlignment='right';
Str3.VerticalAlignment='bottom';
Str3.ForeGroundColor='1|1|0';
Str3.BackGroundColor='1|0|1';
Srt3.FontAngle='normal';
Str3.FontSize=25;

Str1.Visible='off';
xpause(700000);
Str2.Visible='off';
xpause(700000);
Str3.Visible='off';
end

