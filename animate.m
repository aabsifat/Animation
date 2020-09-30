% animate.m - Main program to run the animation.

% Abdullah Sifat
% AE 227
% Spring 2018
% Final Project

clear all
close all
clc

% Call function to create window
[w,h] = window ;

% Call function to draw balls
[b,r] = balls (w,h) ;

x(1:length(b)) = 1 ; % initial velocity of balls in x-direction
y(1:length(b)) = 1 ; % initial velocity of balls in y-direction

% Run the animation
while 1
    for  i = 1:length(b)
        
        % Call function to move the ball in NE,NW,SE,SW direction
        moveBall (b(i),x(i),y(i)) ;
        
        % Find the position of the ball inside the window
        [bx(i),by(i)] = getCenter (b(i)) ;
        
        dir = [x(i),y(i)] ; % direction of the ball
        
        % Call function to check interaction with the boundary
        [x(i),y(i)] = boundary (bx(i),by(i),x(i),y(i),w,h,r) ;
        
        % Change color of the ball if it hits the boundary
        if dir(1) ~= x(i) || dir(2) ~= y(i)
            delete (b(i)) ; % delete the previous ball
            color = rand(1,3) ; % Create a random new color for the ball
            b(i) = drawBall (bx(i),by(i),r,color) ; % Create a new ball
        end
            
        % Interaction of the balls with each other
        for j = 1:i                
            % Call function to check ball collision
            [x(i),x(j),y(i),y(j)] = collision (bx,by,x,y,r,i,j) ;                
        end
        
    end
end

