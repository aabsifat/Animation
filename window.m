% window.m - Function to Generate a window to start the animation. The
% function asks user to input window size and also checks for error.
% Format:: [width,height] = window

% Abdullah Sifat
% AE 227
% Spring 2018
% Final Project

function [w,h] = window

% Ask user for the width of the window.
w = input ('Enter the width of the animation window:  ') ;

% Check user input and prompt again if value is incorrect
while w < 100 || w > 1900
    if w < 100
    fprintf('Width too small, please enter a bigger number.\n') ;
    w = input ('Enter the width of the animation window:  ') ;
    end
    if w > 1900
    fprintf('Width too big, please enter a smaller number.\n') ;
    w = input ('Enter the width of the animation window:  ') ;
    end
end

% Ask user for the height of the window.
h = input ('Enter the height of the animation window:  ') ;

% Check user input and prompt again if value is incorrect
while h < 100 || h > 1060
    if h < 100
        fprintf('Hight too small, please enter a bigger number.\n') ;
        h = input ('Enter the height of the animation window:  ') ;
    end
    if h > 1080
        fprintf('Hight too big, please enter a smaller number.\n') ;
        h = input ('Enter the height of the animation window:  ') ;
    end
end

% Generate a window
createWindow (w,h) ;
hold on ;

end