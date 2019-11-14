function varargout = PAA(varargin)
% PAA MATLAB code for PAA.fig
%      PAA, by itself, creates a new PAA or raises the existing
%      singleton*.
%
%      H = PAA returns the handle to a new PAA or the handle to
%      the existing singleton*.
%
%      PAA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PAA.M with the given input arguments.
%
%      PAA('Property','Value',...) creates a new PAA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PAA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PAA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PAA

% Last Modified by GUIDE v2.5 10-Nov-2019 18:46:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PAA_OpeningFcn, ...
                   'gui_OutputFcn',  @PAA_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PAA is made visible.
function PAA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PAA (see VARARGIN)

% Choose default command line output for PAA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PAA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PAA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fig Nx Ny dx dy count position ax
count=0;
position=[];
Nx=str2double(get(handles.edit4, 'string'));
Ny=str2double(get(handles.edit1, 'string'));
dx=str2double(get(handles.edit2, 'string'));  
dy=str2double(get(handles.edit3, 'string'));
%     if get(handles.popupmenu2,'Value')==2
%         abs=-100*dx:0.5*dx:100*dx;
%     elseif get(handles.popupmenu2,'Value')==1
%         abs=-100*dx:dx:100*dx;
%     end
abs=-100*dx:dx:100*dx;
ord=-100*dy:dy:100*dy;
figure('Units','normalized','Position',[0.5 0 0.50 0.92]);
fig=gcf;
axis( [ -20*dx, 20*dx, -20*dy, 20*dy ] );
ax=axis;
for i=1:size(ord,2)
   y(1:length(abs))=ord(i);
   line(abs,y);
   hold on
end
for i=1:size(abs,2)
    x(1:length(ord))=abs(i);
    line(x,ord)
    hold on
end


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.figure1, 'Units', 'normalized', 'Position', [0 0.445 0.5 0.5]);
%movegui('northwest');



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fig a
set(0,'currentfigure', fig);
title({'Выделите нужные для копирования элементы';'и нажмите любую кнопку'});
brush on
waitforbuttonpress;
waitforbuttonpress;
title(' ');
brushm = logical(get(a, 'BrushData'));
xd = get(a, 'XData');
yd = get(a, 'YData');
copyobj(1,:)= xd(brushm);
copyobj(2,:)= yd(brushm);
assignin('base','copyobj',copyobj);



% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
 val = get(hObject,'Value');

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fig a position ax dx dy count absclattice ordilattice 
set(0,'currentfigure', fig);
title({'Выделите нужные для удаления элементы';'и нажмите любую кнопку'});
brush on
waitforbuttonpress;
waitforbuttonpress;
title(' ');
brushm = logical(get(a, 'BrushData'));
xd = get(a, 'XData');
yd = get(a, 'YData');
arfordel(1,:)= xd(brushm);
arfordel(2,:)= yd(brushm);
count=count-size(arfordel,2);

arfordel=rot90(arfordel);
position=rot90(position);
dd = setdiff(position,arfordel,'rows');
position=rot90(dd, 3);

clf(gcf);
% if get(handles.popupmenu2,'Value')==2
%     abs=-100*dx:0.5*dx:100*dx;
% elseif get(handles.popupmenu2,'Value')==1
%     abs=-100*dx:dx:100*dx;
% end
abs=-100*dx:dx:100*dx;
ord=-100*dy:dy:100*dy;
axis(ax);
for i=1:size(ord,2)
    y(1:length(abs))=ord(i);
    line(abs,y);
    hold on
end
for i=1:size(abs,2)
    x(1:length(ord))=abs(i);
    line(x,ord)
    hold on
end

            if get(handles.checkbox1, 'Value')==1
                for i=1:size(ordilattice,2)
                    ylattice(1:length(absclattice))=ordilattice(i);
                    line(absclattice,ylattice,'Color','black');
                    hold on
                end
                for i=1:size(absclattice,2)
                    xlattice(1:length(ordilattice))=absclattice(i);
                    line(xlattice,ordilattice,'Color','black');
                    hold on
                end
            end

a=plot(position(1,:),position(2,:),'o','color','r', 'MarkerFaceColor', 'w');
assignin('base','x',position(1,:));
assignin('base','y',position(2,:));


% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global position dx dy
%filename=get(handles.filename, 'string');
filename=uiputfile('PAA.mat');
x=position(1,:);
y=position(2,:);
save(filename ,'x', 'y', 'dx', 'dy');




function filename_Callback(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filename as text
%        str2double(get(hObject,'String')) returns contents of filename as a double


% --- Executes during object creation, after setting all properties.
function filename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in load.
function load_Callback(hObject, eventdata, handles)
% hObject    handle to load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global position count a fig ax
set(handles.pushbutton4,'Enable','off');
set(handles.clear,'Enable','off');
count=0;
position=[];
filename=uigetfile;
figure('Units','Pixels','Position',[961 0 959 999]);
fig=gcf;
load(filename);
abs=-100*dx:dx:100*dx;
ord=-100*dy:dy:100*dy;
axis( [ -20*dx, 20*dx, -20*dy, 20*dy ] );
ax=axis;

for i=1:size(ord,2)
   yg(1:length(abs))=ord(i);
   line(abs,yg);
   hold on
end
for i=1:size(abs,2)
    xg(1:length(ord))=abs(i);
    line(xg,ord)
    hold on
end

position(1,:)=x;
position(2,:)=y;
count=count+size(position, 2);
a=plot(position(1,:),position(2,:),'o','color','r', 'MarkerFaceColor', 'w');


% --- Executes when selected object is changed in uibuttongroup1.
function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fig Nx Ny dx dy count position stop a ax dxlattice dylattice absclattice ordilattice
switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'radiobutton1'
        set(handles.save,'Enable','on');
        set(handles.pushbutton4,'Enable','off');
        set(handles.clear,'Enable','off');
        stop=0;
        set(0,'currentfigure', fig);
        ax=axis;
        
        while get(handles.radiobutton1,'Value')==1
            datacursormode on
            waitforbuttonpress;
            
            if stop==1
                title(' ');
                break
            end
            
            s = getCursorInfo(datacursormode);
            point=s.Position;
           
            first=[point(1),point(2)];
            if get(handles.popupmenu2,'Value')==2
                %absc=-100*dx:0.5*dx:100*dx;
                pos=hexsub(first,[Nx,Ny],[dx,dy]);
            elseif get(handles.popupmenu2,'Value')==1
                %absc=-100*dx:dx:100*dx;
                pos=rectsub(first,[Nx,Ny],[dx,dy]);
            end
            absc=-100*dx:dx:100*dx;
                        
            for i=1:size(pos,2)
                count=count+1;
                position(1,count)=pos(1,i);
                position(2,count)=pos(2,i);
            end
            
            clf(gcf);
            %abs=-100*dx:0.5*dx:100*dx;
            ord=-100*dy:dy:100*dy;
            axis(ax);
            
            for i=1:size(ord,2)
                y(1:length(absc))=ord(i);
                line(absc,y);
                hold on
            end
            for i=1:size(absc,2)
                x(1:length(ord))=absc(i);
                line(x,ord)
                hold on
            end
            
            
            if get(handles.checkbox1, 'Value')==0
                clear dxlattice dylattice abslattice ordlattice xlattice ylattice
                dxlattice=Nx*dx;
                dylattice=Ny*dy;
                abslattice=fix(-100/Nx)*dxlattice+point(1):dxlattice:fix(100/Nx)*dxlattice+point(1);               
                ordlattice=fix(-100/Ny)*dylattice+point(2):dylattice:fix(100/Ny)*dylattice+point(2);
                absclattice=abslattice;
                ordilattice=ordlattice;
                for i=1:size(ordlattice,2)
                    ylattice(1:length(abslattice))=ordlattice(i);
                    line(abslattice,ylattice,'Color','black');
                    hold on
                end
                for i=1:size(abslattice,2)
                    xlattice(1:length(ordlattice))=abslattice(i);
                    line(xlattice,ordlattice,'Color','black')
                    hold on
                end
            else
                for i=1:size(ordlattice,2)
                    ylattice(1:length(abslattice))=ordlattice(i);
                    line(abslattice,ylattice,'Color','black');
                    hold on
                end
                for i=1:size(abslattice,2)
                    xlattice(1:length(ordlattice))=abslattice(i);
                    line(xlattice,ordlattice,'Color','black')
                    hold on
                end
            end

            
            
            
            a=plot(position(1,:),position(2,:),'o','color','r', 'MarkerFaceColor', 'w');
            delete(findall(gcf,'Type','hggroup'));
        end
        
        assignin('base','x',position(1,:));
        assignin('base','y',position(2,:));
        set(handles.pushbutton4,'Enable','on');
        set(handles.clear,'Enable','on');
    case 'radiobutton3'
        datacursormode on;
        set(handles.save,'Enable','on');
        set(handles.pushbutton4,'Enable','off');
        set(handles.clear,'Enable','off');
        stop=0;
        set(0,'currentfigure', fig);
        ax=axis;
        
        while get(handles.radiobutton3,'Value')==1
            datacursormode on
            waitforbuttonpress;
            
            if stop==1
                title(' ');
                break
            end
            
            s = getCursorInfo(datacursormode);
            point=s.Position;

%             if get(handles.popupmenu2,'Value')==2
%                 absc=-100*dx:0.5*dx:100*dx;
%             elseif get(handles.popupmenu2,'Value')==1
%                 absc=-100*dx:dx:100*dx;
%             end
            absc=-100*dx:dx:100*dx;

            count=count+1;
            position(1,count)=point(1);
            position(2,count)=point(2);
            clf(gcf);
            ord=-100*dy:dy:100*dy;
            axis(ax);
            
            for i=1:size(ord,2)
                y(1:length(absc))=ord(i);
                line(absc,y);
                hold on
            end
            for i=1:size(absc,2)
                x(1:length(ord))=absc(i);
                line(x,ord)
                hold on
            end
            
            if get(handles.checkbox1, 'Value')==1
                for i=1:size(ordilattice,2)
                    ylattice(1:length(absclattice))=ordilattice(i);
                    line(absclattice,ylattice,'Color','black');
                    hold on
                end
                for i=1:size(absclattice,2)
                    xlattice(1:length(ordilattice))=absclattice(i);
                    line(xlattice,ordilattice,'Color','black');
                    hold on
                end
            end
            
            a=plot(position(1,:),position(2,:),'o','color','r', 'MarkerFaceColor', 'w');
            delete(findall(gcf,'Type','hggroup'));
        end
        assignin('base','x',position(1,:));
        assignin('base','y',position(2,:));
        set(handles.pushbutton4,'Enable','on');
        set(handles.clear,'Enable','on');
    case 'radiobutton4'
        datacursormode on;
        set(handles.save,'Enable','on');
        set(handles.pushbutton4,'Enable','off');
        set(handles.clear,'Enable','off');
        nxcopy=str2double(get(handles.edit12, 'string'));
        nycopy=str2double(get(handles.edit9, 'string'));
        dxcopy=str2double(get(handles.edit10, 'string'));
        dycopy=str2double(get(handles.edit11, 'string'));
        clear posi pos C
        stop=0;
        copyobj = evalin('base', 'copyobj');
        set(0,'currentfigure', fig);
        ax=axis;
        while get(handles.radiobutton4,'Value')==1
            datacursormode on
            waitforbuttonpress;

            if stop==1
                title(' ');
                break
            end  

            s = getCursorInfo(datacursormode);
            point=s.Position; 

%             if get(handles.popupmenu2,'Value')==2
%                 absc=-100*dx:0.5*dx:100*dx;
%             elseif get(handles.popupmenu2,'Value')==1
%                 absc=-100*dx:dx:100*dx;
%             end
            absc=-100*dx:dx:100*dx;

            difference=rot90(point,3)-copyobj(:,1);
            for j=0:(nxcopy-1)
                    for i=1:size(copyobj,2)
                        pos{1,j+1}(1,i)=copyobj(1,i)+difference(1)+j*dxcopy;
                    end
            end
            for j=0:(nycopy-1)   
                for i=1:size(copyobj,2)
                    pos{1,j+1}(2,i)=copyobj(2,i)+difference(2)-j*dycopy;
                end    
            end
            n = floor((nycopy:nycopy*(nxcopy+1)-1)/nycopy);
            m = 1:nycopy;
            m = repmat(m,1,nxcopy);
            for i=1:nycopy*nxcopy
                posi{1,i}(1,:)=pos{1,n(i)}(1,:);
                posi{1,i}(2,:)=pos{1,m(i)}(2,:);
            end   
            C=cat(2,posi{1,:});

            for i=1:size(C,2)
                count=count+1;
                position(1,count)=C(1,i);
                position(2,count)=C(2,i);
            end 

            clf(gcf);
            ord=-100*dy:dy:100*dy;
            axis(ax);
            for i=1:size(ord,2)
                y(1:length(absc))=ord(i);
                line(absc,y);
                hold on
            end
            for i=1:size(absc,2)
                x(1:length(ord))=absc(i);
                line(x,ord)
                hold on
            end
            
            if get(handles.checkbox1, 'Value')==1
                for i=1:size(ordilattice,2)
                    ylattice(1:length(absclattice))=ordilattice(i);
                    line(absclattice,ylattice,'Color','black');
                    hold on
                end
                for i=1:size(absclattice,2)
                    xlattice(1:length(ordilattice))=absclattice(i);
                    line(xlattice,ordilattice,'Color','black');
                    hold on
                end
            end
            
            a=plot(position(1,:),position(2,:),'o','color','r', 'MarkerFaceColor', 'w');
            delete(findall(gcf,'Type','hggroup'));
        end
        assignin('base','Array',position);
        assignin('base','x',position(1,:));
        assignin('base','y',position(2,:));
        set(handles.pushbutton4,'Enable','on');
        set(handles.clear,'Enable','on');
    case 'radiobutton5'
        stop=1;
        set(0,'currentfigure', fig);
        title('Нажмите любую кнопку в этом окне для импорта данных в workspace');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
