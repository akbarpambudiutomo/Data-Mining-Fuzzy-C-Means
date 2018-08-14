function varargout = AplikasiPenentuanBeasiswaPolpos(varargin)
% APLIKASIPENENTUANBEASISWAPOLPOS MATLAB code for AplikasiPenentuanBeasiswaPolpos.fig
%      APLIKASIPENENTUANBEASISWAPOLPOS, by itself, creates a new APLIKASIPENENTUANBEASISWAPOLPOS or raises the existing
%      singleton*.
%
%      H = APLIKASIPENENTUANBEASISWAPOLPOS returns the handle to a new APLIKASIPENENTUANBEASISWAPOLPOS or the handle to
%      the existing singleton*.
%
%      APLIKASIPENENTUANBEASISWAPOLPOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APLIKASIPENENTUANBEASISWAPOLPOS.M with the given input arguments.
%
%      APLIKASIPENENTUANBEASISWAPOLPOS('Property','Value',...) creates a new APLIKASIPENENTUANBEASISWAPOLPOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AplikasiPenentuanBeasiswaPolpos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AplikasiPenentuanBeasiswaPolpos_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AplikasiPenentuanBeasiswaPolpos

% Last Modified by GUIDE v2.5 19-Jul-2018 22:34:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AplikasiPenentuanBeasiswaPolpos_OpeningFcn, ...
                   'gui_OutputFcn',  @AplikasiPenentuanBeasiswaPolpos_OutputFcn, ...
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


% --- Executes just before AplikasiPenentuanBeasiswaPolpos is made visible.
function AplikasiPenentuanBeasiswaPolpos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AplikasiPenentuanBeasiswaPolpos (see VARARGIN)

% Choose default command line output for AplikasiPenentuanBeasiswaPolpos
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AplikasiPenentuanBeasiswaPolpos wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AplikasiPenentuanBeasiswaPolpos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ipk_Callback(hObject, eventdata, handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ipk as text
%        str2double(get(hObject,'String')) returns contents of ipk as a double


% --- Executes during object creation, after setting all properties.
function ipk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ipk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gaji_Callback(hObject, eventdata, handles)
% hObject    handle to gaji (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gaji as text
%        str2double(get(hObject,'String')) returns contents of gaji as a double


% --- Executes during object creation, after setting all properties.
function gaji_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gaji (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
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
npm = get(handles.npm, 'String');
ipk = get(handles.ipk, 'String');
gaji = get(handles.gaji, 'String');
tgg = get(handles.tgg, 'String');
ps = get(handles.ps, 'String');

ipk = str2double(ipk);
gaji = str2double(gaji);
tgg = str2double(tgg);
ps = str2double(ps);

data = [ipk gaji tgg ps];
load pusatDataCluster.dat;
pusat1 = pusatDataCluster(1,:);
pusat2 = pusatDataCluster(2,:);

ujiA = norm(data-pusat1)
ujiB = norm(data-pusat2)

if ujiA > ujiB
    set(handles.hasil, 'String','Mendapatkan Beasiswa')
else
    set(handles.hasil, 'String','Tidak Mendapatkan Beasiswa')
end


function tgg_Callback(hObject, eventdata, handles)
% hObject    handle to tgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tgg as text
%        str2double(get(hObject,'String')) returns contents of tgg as a double


% --- Executes during object creation, after setting all properties.
function tgg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tgg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ps_Callback(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ps as text
%        str2double(get(hObject,'String')) returns contents of ps as a double


% --- Executes during object creation, after setting all properties.
function ps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function npm_Callback(hObject, eventdata, handles)
% hObject    handle to npm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of npm as text
%        str2double(get(hObject,'String')) returns contents of npm as a double


% --- Executes during object creation, after setting all properties.
function npm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to npm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
