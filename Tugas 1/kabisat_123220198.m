function varargout = kabisat_123220198(varargin)
% KABISAT_123220198 MATLAB code for kabisat_123220198.fig
%      KABISAT_123220198, by itself, creates a new KABISAT_123220198 or raises the existing
%      singleton*.
%
%      H = KABISAT_123220198 returns the handle to a new KABISAT_123220198 or the handle to
%      the existing singleton*.
%
%      KABISAT_123220198('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KABISAT_123220198.M with the given input arguments.
%
%      KABISAT_123220198('Property','Value',...) creates a new KABISAT_123220198 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kabisat_123220198_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kabisat_123220198_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kabisat_123220198

% Last Modified by GUIDE v2.5 03-Mar-2024 14:29:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kabisat_123220198_OpeningFcn, ...
                   'gui_OutputFcn',  @kabisat_123220198_OutputFcn, ...
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


% --- Executes just before kabisat_123220198 is made visible.
function kabisat_123220198_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kabisat_123220198 (see VARARGIN)

% Choose default command line output for kabisat_123220198
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kabisat_123220198 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kabisat_123220198_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tahun_Callback(~, ~, handles)
% hObject    handle to tahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tahun as text
%        str2double(get(hObject,'String')) returns contents of tahun as a double


% --- Executes during object creation, after setting all properties.
function tahun_CreateFcn(hObject, ~, handles)
% hObject    handle to tahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tahun = get(handles.tahun,'string');

angka = str2num(tahun);
kabisat = mod(angka, 4);
if kabisat == 0
    set (handles.status, 'string', 'merupakan tahun kabisat')
else
    set (handles.status, 'string', 'bukan merupakan tahun kabisat')
end

function status_Callback(hObject, eventdata, handles)
% hObject    handle to status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of status as text
%        str2double(get(hObject,'String')) returns contents of status as a double


% --- Executes during object creation, after setting all properties.
function status_CreateFcn(hObject, eventdata, handles)
% hObject    handle to status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
