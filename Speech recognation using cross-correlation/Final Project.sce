clear;
clc;

//***************************************Taking Input From the user to know which Application he/she would like to perform*********************************************
n=x_dialog('1. A 2 digit number recongnization  2. AC Remote (on/off) || Enter any Number:','1')

//**************************************Input files******************************
input11="C:\Users\NIPUN\Downloads\Project SS Scilab\testfile.wav";
input22="C:\Users\NIPUN\Downloads\Project SS Scilab\testfile.wav";

//********************Switch Case************************
select n
    case '1' then

//*****************************ALL Display command used to print the output in the CONSOLE****************************************
        disp('You chose option 1');
        disp("A 2 digit Number Recongnition System");
        
//************************ Syntax to Form User Interface********************************
        f=figure('figure_position',[408,88],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
handles.dummy = 0;
handles.pb_one=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0383974,0.7444671,0.1682692,0.0612245],'Relief','default','SliderStep',[0.01,0.1],'String','WITH ONE','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_one','Callback','pb_one_callback(handles)')
handles.pb_two=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0390385,0.6450884,0.1682692,0.0612245],'Relief','default','SliderStep',[0.01,0.1],'String','WITH TWO','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_two','Callback','pb_two_callback(handles)')
handles.pb_three=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0396795,0.5457098,0.1682692,0.0612245],'Relief','default','SliderStep',[0.01,0.1],'String','WITH THREE','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_three','Callback','pb_three_callback(handles)')
handles.pb_four=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0403205,0.4463311,0.1682692,0.0612245],'Relief','default','SliderStep',[0.01,0.1],'String','WITH FOUR','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_four','Callback','pb_four_callback(handles)')
handles.pb_five=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0409615,0.3469524,0.1682692,0.0612245],'Relief','default','SliderStep',[0.01,0.1],'String','WITH FIVE','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_five','Callback','pb_five_callback(handles)')
handles.pb_op=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0377564,0.2543764,0.1682692,0.0612245],'Relief','default','SliderStep',[0.01,0.1],'String','OUTPUT','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_op','Callback','pb_op_callback(handles)')
handles.pb_axis= newaxes();handles.pb_axis.margins = [ 0 0 0 0];handles.pb_axis.axes_bounds = [0.3012821,0.1020408,0.6009615,0.6961451];


f.visible = "on";




//////////
// Callbacks are defined as below. Please do not delete the comments as it will be used in coming version
//////////


//*********************************** Converting the .wav input file to data point file*******************************


x=wavread(input11);
x=x(1,:);
x=x';


//**********************************Plays the Input File*****************************************
playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Theoriginalfile.wav");
sleep(4,'s')
playsnd(input11);
sleep(2,'s')

//****************************Finding and Plotting correlation of Input File with Sampele File1 *********************************

y1=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\testfile.wav");
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
l1=length(z1);
disp("value at 0 index for sample 1");
disp(z1(l1/2+1));
m1=z1(l1/2+1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';



function pb_one_callback(handles)
//Write your callback for  pb_one  here

a1 = get("current_axes");
delete(a1.children);
plot(t1,z1);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 1","fontsize",4);
endfunction


//****************************Finding and Plotting correlation of Input File with Sampele File2 *********************************

y2=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\testfile1.wav");
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
l2=length(z2);
disp("value at 0 index for sample 2");
disp(z2(l2/2+1));
m2=z2(l2/2+1);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';



function pb_two_callback(handles)
//Write your callback for  pb_two  here

a1 = get("current_axes");
delete(a1.children);

plot(t2,z2);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 2","fontsize",4);
endfunction


//****************************Finding and Plotting correlation of Input File with Sampele File3 *********************************

y3=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\testfile2.wav");
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
l3=length(z3);
disp("value at 0 index for sample 3");
disp(z3(l3/2+1));
m3=z3(l3/2+1);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';



function pb_three_callback(handles)
//Write your callback for  pb_three  here

a1 = get("current_axes");
delete(a1.children);

plot(t3,z3);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 3","fontsize",4);
endfunction


//****************************Finding and Plotting correlation of Input File with Sampele File4 *********************************

y4=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\testfile3.wav");
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
l4=length(z4);
disp("value at 0 index for sample 4");
disp(z4(l4/2+1));
m4=z4(l4/2+1);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';



function pb_four_callback(handles)
//Write your callback for  pb_four  here

a1 = get("current_axes");
delete(a1.children);

plot(t4,z4);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 4","fontsize",4);
endfunction


//****************************Finding and Plotting correlation of Input File with Sampele File5 *********************************

y5=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\testfile4.wav");
y5=y5(1,:);
y5=y5';
z5=xcorr(x,y5);
l5=length(z5);
disp("value at 0 index for sample 5");
disp(z5(l5/2+1));
m5=z5(l5/2+1);
t5=-((l5-1)/2):1:((l5-1)/2);
t5=t5';



function pb_five_callback(handles)
//Write your callback for  pb_five  here

a1 = get("current_axes");
delete(a1.children);


plot(t5,z5);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 5","fontsize",4);
endfunction


//********** Thresold Amplitude / Cut-off Amplitude***********
disp("Thresold Amplitude is")
m6=20;
disp(m6);
a=[m1 m2 m3 m4 m5 m6];
m=max(a);


function pb_op_callback(handles)
//Write your callback for  pb_op  here
a1 = get("current_axes");
delete(a1.children);

cc=1;

//***************** Comparing the Maximum Correlation among Input file and various Sample files *********************


if m<=m1 then
    cc=0;
    disp("Testfile0 is the perfect match as Testfile0 got highest correlation with the given Samplefile");
   
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav");
    plot(t1,z1);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 0 is Matched with the Given Sample File","fontsize",4);
    
elseif m<=m2 then
    cc=0;
    disp("Testfile1 is the perfect match as Testfile1 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav"); 
   
    plot(t2,z2);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 1 is Matched with the Given Sample File","fontsize",4);
    
elseif m<=m3 then
    cc=0;
    disp("Testfile2 is the perfect match as Testfile2 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav");
   
    plot(t3,z3);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 2 is Matched with the Given Sample File","fontsize",4);
    
    
elseif m<=m4 then
    cc=0;
    disp("Testfile3 is the perfect match as Testfile3 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav");
   
    plot(t4,z4);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 3 is Matched with the Given Sample File","fontsize",4);
    
elseif m<=m5 then
    cc=0;
    disp("Testfile4 is the perfect match as Testfile4 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav");
   
    plot(t5,z5);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 4 is Matched with the Given Sample File","fontsize",4);
    
end

//********************************** Access Denied Case ************************

if cc==1 then
   disp("Not any Testfile got highest correlation than Thresold value")
   playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\denied.wav"); 
   title("Result: Not any Test File is Matched with the Given Sample File","fontsize",4);
   
   plot(-49999.5,0);
   alphabet=["DENIED"];
   set(gca(), "font_style", 4, "font_size", 0, "mark_mode","on", "mark_style",3); 
   xstring(-50000,0,alphabet,0)
   gce().font_size = 15;
end

endfunction

        
//******************* Switch case 2 : AC REMOTE device (on/off/increase temp/decrease temp)*****************************
        
    case '2' then
        disp('You chose option 2');
        disp("AC remote (on/off/increase temp/decrease temp)");
        
        
        
            // This GUI file is generated by guibuilder version 4.2.1
//////////
        f=figure('figure_position',[400,50],'figure_size',[640,480],'auto_resize','on','background',[33],'figure_name','Graphic window number %d','dockable','off','infobar_visible','off','toolbar_visible','off','menubar_visible','off','default_axes','on','visible','off');
//////////
handles.dummy = 0;
handles.pb_on=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0169231,0.6848073,0.1891667,0.0834921],'Relief','default','SliderStep',[0.01,0.1],'String','WITH ON','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_on','Callback','pb_on_callback(handles)')
handles.pb_off=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0169231,0.5493198,0.1891667,0.0834921],'Relief','default','SliderStep',[0.01,0.1],'String','WITH OFF','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_off','Callback','pb_off_callback(handles)')
handles.pb_inc=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0169231,0.4138322,0.1891667,0.0834921],'Relief','default','SliderStep',[0.01,0.1],'String','WITH INCREASE','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_inc','Callback','pb_inc_callback(handles)')
handles.pb_dec=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0169231,0.2783447,0.1891667,0.0834921],'Relief','default','SliderStep',[0.01,0.1],'String','WITH DECREASE','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_dec','Callback','pb_dec_callback(handles)')
handles.pb_axis= newaxes();handles.pb_axis.margins = [ 0 0 0 0];handles.pb_axis.axes_bounds = [0.338141,0.2108844,0.6346154,0.5668934];
handles.pb_op=uicontrol(f,'unit','normalized','BackgroundColor',[-1,-1,-1],'Enable','on','FontAngle','normal','FontName','Tahoma','FontSize',[12],'FontUnits','points','FontWeight','normal','ForegroundColor',[-1,-1,-1],'HorizontalAlignment','center','ListboxTop',[],'Max',[1],'Min',[0],'Position',[0.0169231,0.1428571,0.1891667,0.0834921],'Relief','default','SliderStep',[0.01,0.1],'String','OUTPUT','Style','pushbutton','Value',[0],'VerticalAlignment','middle','Visible','on','Tag','pb_op','Callback','pb_op_callback(handles)')


f.visible = "on";







//*********************************** Converting the .wav input file to data point file*******************************

x=wavread(input22);
x=x(1,:);
x=x';


playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Theoriginalfile.wav")
sleep(4,'s')
playsnd(input22);
sleep(2,'s')


//****************************Finding and Plotting correlation of Input File with Sampele File1 *********************************

y1=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\On.wav");
y1=y1(1,:);
y1=y1';
z1=xcorr(x,y1);
l1=length(z1);
disp("value at 0 index for sample 1");
disp(z1(l1/2+1));
m1=z1(l1/2+1);
t1=-((l1-1)/2):1:((l1-1)/2);
t1=t1';


function pb_on_callback(handles)
//Write your callback for  pb_on  here

a1 = get("current_axes");
delete(a1.children);
plot(t1,z1);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 1","fontsize",4);

endfunction


//****************************Finding and Plotting correlation of Input File with Sampele File2 *********************************

y2=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\Off.wav");
y2=y2(1,:);
y2=y2';
z2=xcorr(x,y2);
l2=length(z2);
disp("value at 0 index for sample 2");
disp(z2(l2/2+1));
m2=z2(l2/2+1);
t2=-((l2-1)/2):1:((l2-1)/2);
t2=t2';

function pb_off_callback(handles)
//Write your callback for  pb_off  here

a1 = get("current_axes");
delete(a1.children);
plot(t2,z2);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 2","fontsize",4);

endfunction


//****************************Finding and Plotting correlation of Input File with Sampele File3 *********************************

y3=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\Increasetemp.wav");
y3=y3(1,:);
y3=y3';
z3=xcorr(x,y3);
l3=length(z3);
disp("value at 0 index for sample 3");
disp(z3(l3/2+1));
m3=z3(l3/2+1);
t3=-((l3-1)/2):1:((l3-1)/2);
t3=t3';


function pb_inc_callback(handles)
//Write your callback for  pb_inc  here

a1 = get("current_axes");
delete(a1.children);
plot(t3,z3);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 3","fontsize",4);

endfunction


//****************************Finding and Plotting correlation of Input File with Sampele File4 *********************************

y4=wavread("C:\Users\NIPUN\Downloads\Project SS Scilab\Decreasetemp.wav");
y4=y4(1,:);
y4=y4';
z4=xcorr(x,y4);
l4=length(z4);
disp("value at 0 index for sample 4");
disp(z4(l4/2+1));
m4=z4(l4/2+1);
t4=-((l4-1)/2):1:((l4-1)/2);
t4=t4';


function pb_dec_callback(handles)

//Write your callback for  pb_dec  here
a1 = get("current_axes");
delete(a1.children);

plot(t4,z4);
xgrid(2);
xlabel("Time","fontsize",4);
ylabel("Amplitude","fontsize",4)
title("Input file with Sample File 4","fontsize",4);

endfunction

//***********************Thresold Amplitude / Cut-Off Amplitude*****************

disp("Thresold Amplitude is")
m5=21;
disp(m5);
a=[m1 m2 m3 m4 m5];
m=max(a);

function pb_op_callback(handles)
//Write your callback for  pb_op  here
a1 = get("current_axes");
delete(a1.children);
cc=1;

//***************** Comparing the Maximum Correlation among Input file and various Sample files *********************

if m<=m1 then
    cc=0;
    disp("Testfile0 is the perfect match as Testfile0 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav");

    plot(t1,z1);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 0 is Matched with the Given Sample File","fontsize",4);
    
elseif m<=m2 then
    cc=0;
    disp("Testfile1 is the perfect match as Testfile1 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav"); 

    plot(t2,z2);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 1 is Matched with the Given Sample File","fontsize",4);
    
elseif m<=m3 then
    cc=0;
    disp("Testfile2 is the perfect match as Testfile2 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav");

    plot(t3,z3);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 2 is Matched with the Given Sample File","fontsize",4);
    
elseif m<=m4 then
    cc=0;
    disp("Testfile3 is the perfect match as Testfile3 got highest correlation with the given Samplefile");
    playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\Accessgranted1.wav");

    plot(t4,z4);
    xgrid(2);
    xlabel("Time","fontsize",4);
    ylabel("Amplitude","fontsize",4)
    title("Result: Test File 3 is Matched with the Given Sample File","fontsize",4);
    
end

//********************************** Access Denied Case ************************

if cc==1 then
   disp("Not any Testfile got highest correlation than Thresold value")
   playsnd("C:\Users\NIPUN\Downloads\Project SS Scilab\denied.wav"); 
   title("Result: Not any Test File is Matched with the Given Sample File","fontsize",4);
   
   plot(-49999.5,0);
   alphabet=["DENIED"];
   set(gca(), "font_style", 4, "font_size", 0, "mark_mode","on", "mark_style",3); 
   xstring(-50000,0,alphabet,0)
   gce().font_size = 15;
end


endfunction


    else
        disp('You Choose Invalid number, Please enter again!');
        x_dialog('You Chose Invalid Number. Please Run Again!!')
    end



