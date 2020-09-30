Abdullah Sifat
Final Project 
AE 227 - Spring 2018
May 02, 2018




Description of the program:

The program is an animation of balls moving inside a window. The balls bounce off as mirror 
reflection back into the window and change color when they hit the four edges of the window. 
The balls also undergo mirror reflections when they collide with each other orthogonally and 
reverse directions when they collide head on. The height & width of the window, the numbers 
of balls, the radius of the balls, and the coordinates of the balls inside the window are all 
defined by the user. The program asks the user for all these informations at the begining. 
The program keeps on running the animation until the user closes the window. The program 
also checks for user input to make sure that the balls are within the created window and do 
not overlap with each other.


Explanation of the algorithm for ball-to-ball interaction:

The distance between all the balls are continuously calculated by using the equation 
diff = sqrt((x2-x1)^2 + (y2-y1)^2)  where "diff" is the distance between the center of two 
balls, x & y are the coordinates of the centers of the balls. When the distance between 
two balls is found to be less or equal to twice the diameter of the  balls, the direction of 
the balls are changed. There are four possible ways a head on collision can occure. 
If these four conditions are met, the direction of the balls are reversed. If the balls collide 
with each other in any other possible ways, orthogonal collision is considered and the balls 
are made to perform a mirror reflection.


Explanation of algorithmfor ball-to-wall interaction:

The center of each ball is continuously monitored. Boundries are defined for all four sides of 
the window. The left edge and the bottom edge are defined as equal to the radius (r) of the 
balls. The right edge is defined as the width of the window minus the radius of the ball (h-r). 
The top edge is defined as the height of the window minus the radius of the balls. If a ball 
reaches the top edge (h-r) and bottom edges (r) of the window, the y direction of the ball 
is reversed and if the ball reaches the left edge (r) and right edges (w-r), the x direction is 
reversed, thus creating mirror reflection.




List of functions:

1) moveBall.m    -   This function moves the balls in NE, SE, NW or SW directions by moving 
                                 the balls one pixel in x-direction and one pixel in y-direction at a time.

2) window.m       -    Function to Generate a window to start the animation. The function asks
                                  user to input window height and width and also checks for error. A typical
                                 1920x1080 pixel screen is considered while checking for user input. If the
                                  user input falls outside this pixel size, the user will be asked to enter data
                                  again.  A minimum of 100 pixels for both height and width is made
                                  compulsory in order to make the window big enough to enjoy the 
                                  animation.

3) collision.m      -   Function that checks interations of the balls with each other and changes
                                 its direction accordingly. If the balls collide head on the direction is 
                                 reversed and if they collide orthogonally the direction changes like a 
                                 mirror reflection.

4) boundary.m    -    Function that checks interations of the balls with the four edges of the
                                  window and changes its direction as a mirror reflection.

5) balls.m            -   Function to generate balls within the created window. The function asks 
                                 user for the number of balls to be created, ball radius, and position. It 
                                 also checks user input to make sure the ball is within the window and 
                                 does not overlab with one another. It also outputs the plot handles of 
                                 each ball and the radius to the main program.


Comments:

It might be possible to overlap ball positions by alternating the coordinates of the balls multiple
times if the number of balls enetred is more than two. However, steps are taken to minimize 
the effect of this bug by running two loops while creating the balls. 



