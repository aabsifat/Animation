% boundary.m - function that checks interations of the balls with the 
% boundary of the window and changes its direction accordingly.
% Format:: [x,y] = boundary (bx,by,x,y,width,height,radius)

% Abdullah Sifat
% AE 227
% Spring 2018
% Final Project

function [a,b] = boundary (bx,by,x,y,w,h,r)

% values of x and y if the conditions below do not satisfy
a = x ;
b = y ;

if bx >= (w-r) % If ball reaches the right edge of the window
    a = -1 ;
elseif bx <= r % If ball reaches the left edge of the window
    a = 1 ;
end
if by >= (h-r) % If ball reaches the top edge of the window
    b = -1 ;
elseif by <= r % If ball reaches the bottom edge of the window
    b = 1 ;
end

end