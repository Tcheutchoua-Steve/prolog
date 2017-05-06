% positive numbers
positive(N) :- N>0.
non_zero(N) :- N<0 ; N>0.

% minimum(X,Y,Z) is true if Z is the minimum of X and Y no recursion
minimum(X,Y,X) :-  X<Y.
minimum(X,Y,Y) :- X>=Y.

% max(X,Y,Z) maximum of 2 numbers with no reucrsion
max(X,Y,X) :- X>Y.
max(X,Y,Y) :- X=<Y.

% result of addig 1 to a number
add(X,Y) :- Y is X+1.

% signum function which is x-1 if x>0, and 0 otherwise.
signum(X,Y) :- Y is X-1, X>0.
signum(X,Y) :- Y is 0, X =< 0. 

% the absolute value of a number
absolute(X,Y) :- Y is X, X>=0.
absolute(X,Y) :- Y is -X, X<0.

% product of two numbers
prod(X,Y,Z) :- Z is X * Y.

% the sum of two numbers
sum(X,Y,Z) :- Z is X + Y.

% division of two numbers
div(X,Y,Z) :- Z is X /  Y.

% integer division 
intdiv(X,Y,Z) :- Z is div(X,Y).

% remainder of division of two integers (mod)
rem(X,Y,Z) :- Z is mod(X,Y).

% recursion
max(A,B,C,D) :- max(A,B,W) , max(W,C,D). 

% factorial
fact(0,1).
fact(N,F) :- N>0, N1 is N-1, fact(N1,F1), F is N*F1.



