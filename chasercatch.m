global sec
sec = -1;
pause(2)
%get the text from the button
X = get(handles.pushbutton1, 'string');
Y = get(handles.pushbutton2, 'string');
Z = get(handles.pushbutton3, 'string');

global A
global Score
global chaser



if Score == chaser
    msgbox('end')
end

% hightlights the correct answer
set(handles.edit3,'string',"The Correct answer was");

pause(2)
%compares string from button and correct answer and highlights the correct
%answer green
if strcmp(X,A(2,1))
set(handles.pushbutton1,'ForegroundColor','green');
elseif strcmp(Y,A(2,1))
set(handles.pushbutton2,'ForegroundColor','green');
else
set(handles.pushbutton3,'ForegroundColor','green');
end
 pause(2)

%highlights chaser's answer
chaseprob = randi(10);
set(handles.edit3,'string',"The Chaser's answer was");
   pause(2)
   
%if the chaser is correct
if chaseprob < 9
    
     if strcmp(X,A(2,1))
     set(handles.pushbutton1,'BackgroundColor','red');
     elseif strcmp(Y,A(2,1))
     set(handles.pushbutton2,'BackgroundColor','red');
     elseif strcmp(Z,A(2,1))
     set(handles.pushbutton3,'BackgroundColor','red');
     end
    chaser = chaser +1;    
    disp (chaser)
%if the chaser is wrong
else
      if strcmp(X,A(2,1))
      set(handles.pushbutton3,'BackgroundColor','red');
      elseif strcmp(Y,A(2,1))
      set(handles.pushbutton2,'BackgroundColor','red');
      elseif strcmp(Z,A(2,1))
      set(handles.pushbutton1,'BackgroundColor','red');
      end
end
 pause(2)
 % advance the chaser for each time the chaser get the question right

if chaser == 1
     set(handles.pushbutton5,'BackgroundColor','red');
elseif chaser == 2
    set(handles.pushbutton6,'BackgroundColor','red');
elseif chaser ==3
    set(handles.pushbutton7,'BackgroundColor','red');
elseif chaser ==4
    set(handles.pushbutton8,'BackgroundColor','red');    
end
% advance the player for each time the player get the question right  
%if caught or won end game
if Score == chaser
    msgbox('caught')
elseif Score== 3
    set(handles.pushbutton8,'BackgroundColor','blue');
elseif Score== 4
    set(handles.pushbutton8,'BackgroundColor','blue');
elseif Score ==5
    set(handles.pushbutton9,'BackgroundColor','blue');
elseif Score ==6
msgbox('won')
end
set(handles.edit3,'String','Click ready for next question')
%reset the button colours an text


