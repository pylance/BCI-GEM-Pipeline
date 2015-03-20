function varargout = menu_analysis(varargin)
% MENU_ANALYSIS MATLAB code for menu_analysis.fig
%      MENU_ANALYSIS, by itself, creates a new MENU_ANALYSIS or raises the existing
%      singleton*.
%
%      H = MENU_ANALYSIS returns the handle to a new MENU_ANALYSIS or the handle to
%      the existing singleton*.
%
%      MENU_ANALYSIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENU_ANALYSIS.M with the given input arguments.
%
%      MENU_ANALYSIS('Property','Value',...) creates a new MENU_ANALYSIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before menu_analysis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to menu_analysis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help menu_analysis

% Last Modified by GUIDE v2.5 12-Mar-2015 12:41:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @menu_analysis_OpeningFcn, ...
                   'gui_OutputFcn',  @menu_analysis_OutputFcn, ...
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


% --- Executes just before menu_analysis is made visible.
function menu_analysis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to menu_analysis (see VARARGIN)

% Choose default command line output for menu_analysis
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes menu_analysis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = menu_analysis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in view_SSVEP_analysis.
function view_SSVEP_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to view_SSVEP_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in view_RSVP_analysis.
function view_RSVP_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to view_RSVP_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if exist('handles.context_rsvp')
    close(handles.context_rsvp)
    clear handles.context_rsvp
end
global SCR;
handles.context_rsvp= context_rsvp('position',[SCR(3)/4+400 ,SCR(4)/4-600 800 750]);


% --- Executes on button press in view_ERN_analysis.
function view_ERN_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to view_ERN_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in view_MI_analysis.
function view_MI_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to view_MI_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in view_behavioral_analysis.
function view_behavioral_analysis_Callback(hObject, eventdata, handles)
% hObject    handle to view_behavioral_analysis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
