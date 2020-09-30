% collision.m - function that checks interations of the balls with each 
% other and changes its direction accordingly. If the balls collide head
% on the direction is reversed and if they collide orthogonally the
% direction changes like a mirror reflection.
% Format:: [x(i),x(j),y(i),y(j)] = collision (bx,by,x,y,r,i,j)

% Abdullah Sifat
% AE 227
% Spring 2018
% Final Project

function [a,b,c,d] = collision (bx,by,x,y,r,i,j)

% values of x(i),x(j),y(i),Y(j) if the conditions below do not satisfy
a = x(i) ;
b = x(j) ;
c = y(i) ;
d = y(j) ;

% Calculate the difference between the balls
diff = sqrt((bx(i)-bx(j))^2 + (by(i)-by(j))^2) ;

if diff <= 2*r
    % Head on collision
    if x(i) == 1 && y(i) == 1 && x(j) == -1 && y(j) == -1 
        a = x(i)*(-1) ;
        b = x(j)*(-1) ;
        c = y(i)*(-1) ;
        d = y(j)*(-1) ;
    elseif x(j) == 1 && y(j) == 1 && x(i) == -1 && y(i) == -1 
        a = x(i)*(-1) ;
        b = x(j)*(-1) ;
        c = y(i)*(-1) ;
        d = y(j)*(-1) ;
    elseif x(i) == -1 && y(i) == 1 && x(j) == 1 && y(j) == -1 
        a = x(i)*(-1) ;
        b = x(j)*(-1) ;
        c = y(i)*(-1) ;
        d = y(j)*(-1) ;
    elseif x(i) == 1 && y(i) == -1 && x(j) == -1 && y(j) == 1 
        a = x(i)*(-1) ;
        b = x(j)*(-1) ;
        c = y(i)*(-1) ;
        d = y(j)*(-1) ;
    else
        % Orthogonal collision
        a = x(j) ;
        b = x(i) ;
        c = y(j) ;
        d = y(i) ;
    end
end

end