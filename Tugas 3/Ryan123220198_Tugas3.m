function varargout = Ryan123220198_Tugas3(varargin)
% RYAN123220198_TUGAS3 MATLAB code for Ryan123220198_Tugas3.fig
%      RYAN123220198_TUGAS3, by itself, creates a new RYAN123220198_TUGAS3 or raises the existing
%      singleton*.
%
%      H = RYAN123220198_TUGAS3 returns the handle to a new RYAN123220198_TUGAS3 or the handle to
%      the existing singleton*.
%
%      RYAN123220198_TUGAS3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RYAN123220198_TUGAS3.M with the given input arguments.
%
%      RYAN123220198_TUGAS3('Property','Value',...) creates a new RYAN123220198_TUGAS3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ryan123220198_Tugas3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ryan123220198_Tugas3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ryan123220198_Tugas3

% Last Modified by GUIDE v2.5 17-Mar-2024 23:32:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ryan123220198_Tugas3_OpeningFcn, ...
                   'gui_OutputFcn',  @Ryan123220198_Tugas3_OutputFcn, ...
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


% --- Executes just before Ryan123220198_Tugas3 is made visible.
function Ryan123220198_Tugas3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ryan123220198_Tugas3 (see VARARGIN)

% Choose default command line output for Ryan123220198_Tugas3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ryan123220198_Tugas3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ryan123220198_Tugas3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in showButton.
function showButton_Callback(hObject, eventdata, handles)
% hObject    handle to showButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('apple_quality.csv');
opts.SelectedVariableNames=(1:7);
data = readmatrix('apple_quality.csv', opts);
set(handles.tabelData, 'data', data);


% --- Executes on button press in resetButton.
function resetButton_Callback(hObject, eventdata, handles)
% hObject    handle to resetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.size, 'string', '');
set(handles.weight, 'string', '');
set(handles.sweetness, 'string', '');
set(handles.crunchiness, 'string', '');
set(handles.juiciness, 'string', '');
set(handles.ripeness, 'string', '');
set(handles.acidity, 'string', '');
set(handles.numNeighbors, 'string', '');
set(handles.tabelData, 'data', []);


function size_Callback(hObject, eventdata, handles)
% hObject    handle to size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of size as text
%        str2double(get(hObject,'String')) returns contents of size as a double


% --- Executes during object creation, after setting all properties.
function size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function weight_Callback(hObject, eventdata, handles)
% hObject    handle to weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of weight as text
%        str2double(get(hObject,'String')) returns contents of weight as a double


% --- Executes during object creation, after setting all properties.
function weight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sweetness_Callback(hObject, eventdata, handles)
% hObject    handle to sweetness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sweetness as text
%        str2double(get(hObject,'String')) returns contents of sweetness as a double


% --- Executes during object creation, after setting all properties.
function sweetness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sweetness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function crunchiness_Callback(hObject, eventdata, handles)
% hObject    handle to crunchiness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of crunchiness as text
%        str2double(get(hObject,'String')) returns contents of crunchiness as a double


% --- Executes during object creation, after setting all properties.
function crunchiness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to crunchiness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function juiciness_Callback(hObject, eventdata, handles)
% hObject    handle to juiciness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of juiciness as text
%        str2double(get(hObject,'String')) returns contents of juiciness as a double


% --- Executes during object creation, after setting all properties.
function juiciness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to juiciness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ripeness_Callback(hObject, eventdata, handles)
% hObject    handle to ripeness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ripeness as text
%        str2double(get(hObject,'String')) returns contents of ripeness as a double


% --- Executes during object creation, after setting all properties.
function ripeness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ripeness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function acidity_Callback(hObject, eventdata, handles)
% hObject    handle to acidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of acidity as text
%        str2double(get(hObject,'String')) returns contents of acidity as a double


% --- Executes during object creation, after setting all properties.
function acidity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to acidity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hasilButton.
function hasilButton_Callback(hObject, eventdata, handles)
% hObject    handle to hasilButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
size = str2double(get(handles.size, 'String'));
weight = str2double(get(handles.weight, 'String'));
sweetness = str2double(get(handles.sweetness, 'String'));
crunchiness = str2double(get(handles.crunchiness, 'String'));
juiciness = str2double(get(handles.juiciness, 'String'));
ripeness = str2double(get(handles.ripeness, 'String'));
acidity = str2double(get(handles.acidity, 'String'));

sample = [size weight sweetness crunchiness juiciness ripeness acidity];

opts = detectImportOptions('apple_quality.csv');
opts.SelectedVariableNames=(1:7);
training = readmatrix('apple_quality.csv', opts);

opts = detectImportOptions('apple_quality.csv');
opts.SelectedVariableNames=(9);
group = readmatrix('apple_quality.csv', opts);

num_neighbors_str = get(handles.numNeighbors, 'String');
num_neighbors = str2double(num_neighbors_str);

class = fitcknn(training, group, 'NumNeighbors', num_neighbors);
klasifikasi = predict(class, sample);

set(handles.hasilKlasifikasi, 'String', klasifikasi);



function numNeighbors_Callback(hObject, eventdata, handles)
% hObject    handle to numNeighbors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numNeighbors as text
%        str2double(get(hObject,'String')) returns contents of numNeighbors as a double


% --- Executes during object creation, after setting all properties.
function numNeighbors_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numNeighbors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
