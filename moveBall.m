% moveBall.m - function that moves a ball in NE, SE, NW or SW direction.
% Format:: moveBall (ball,vx,vy)

% Abdullah Sifat
% AE 227
% Spring 2018
% Final Project


function moveBall (b,vx,vy)

xMove (b,vx) ;  % move the ball vx pixel at a time in x-coordinate.

yMove (b,vy) ;  % move the ball vy pixel at a time in y-coordinate.

redraw ; % redraw the object on the screen
            
end