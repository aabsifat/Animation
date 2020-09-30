% balls.m - function to generate balls within a window. The function asks
% user for the number of balls to be created, ball radius, and position. It
% also checks user input to make sure the ball is within the window and 
% does not overlab with one another. It also outputs the ball handles and 
% the radius to the main program.
% Format:: b = balls (w,h)

% Abdullah Sifat
% AE 227
% Spring 2018
% Final Project

function [b,r] = balls (w,h)

% Ask user for the desired numbers of balls.
num = input ('Enter the number of balls to be used:  ')  ;

% Ask user for the radius of the balls.
r = input ('Enter the radius of the balls (same for all the balls):  ')  ;
% if the ball radius is bigger than 20 times the size of the window, ask
% user to input new ball radius.
while r > (w/10) && r > (h/10) 
    fprintf ('Error !! Ball radius too big\n')
    r = input ('Enter the radius of the balls (same for all the balls):  ')  ;
end

% Ask user for the position of each ball
for i = 1:num
    
    % Print ball number in the command window for user's convenience.
    fprintf ('Ball # %d\n' , i) ;
    
    % Ask user for the x-coordinates of individual balls.
    bx(i) = input ('Enter the x-coordinate of the ball:  ')  ;
    % If the entered x-coordinate falls out of window width, ask user for 
    % correct smaller x-coordinates
    while bx(i) > (w-r) || bx(i) < r
        % Print error message
        fprintf ('ERROR !! Ball falls outside the window.\n') ;
        % prompt user for correct ball coordinates
        bx(i) = input ('Enter the x-coordinate of the ball:  ')  ; 
    end
            
    % Ask user for the y-coordinates of individual balls.
    by(i) = input ('Enter the y-coordinate of the ball:  ')  ;
    % If the entered y-coordinate falls out of window height, ask user for 
    % correct smaller y-coordinates
    while by(i) > (h-r) || by(i) < r
        % Print error message
        fprintf ('ERROR !! Ball falls outside the window.\n') ;
        % prompt user for correct ball coordinates
        by(i) = input ('Enter the y-coordinate of the ball:  ')  ; 
    end
    
    % Check if the two balls are in the same position. If so prompt again
    % for correct input.
    if i > 1
        for k = 1:i
            for j = 1:i-1
                % while the difference between the coordinates of the 
                % drawn ball and the coordinates of the previously drawn 
                % balls are less or equal to the radius of the balls, ask 
                % user to input new coordinates.
                while abs(bx(i) - bx(j)) <= 2*r && abs(by(i) - by(j)) <= 2*r
                    % Print error message
                    fprintf ('ERROR !! Overlaping ball position.\n') ;
                    % prompt user for correct ball x-coordinate
                    bx(i) = input ('Enter the x-coordinate of the ball:  ')  ;
                    % Check again for x-coordinate position within the window
                    while bx(i) > (w-r) || bx(i) < r
                        fprintf ('ERROR !! Ball falls outside the window.\n') ;
                        bx(i) = input ('Enter the x-coordinate of the ball:  ')  ; 
                    end
                    % prompt user for correct ball y-coordinate
                    by(i) = input ('Enter the y-coordinate of the ball:  ')  ;
                    % Check again for y-coordinate position within the window
                    while by(i) > (h-r) || by(i) < r
                        fprintf ('ERROR !! Ball falls outside the window.\n') ;
                        by(i) = input ('Enter the y-coordinate of the ball:  ')  ; 
                    end
                end
            end
        end
    end
    
    % Generate random numbers to produce color for the balls
    color = rand(1,3) ;
    
    % Draw balls with the coordinates defined by user.
    b(i) = drawBall (bx(i),by(i),r,color) ;
    
end

end