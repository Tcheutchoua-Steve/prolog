fact(0,1).
fact(N,F) :- N > 0 , N1 is N-1 , fact(N1,F1), F is N*F1.

%fact(0,X) :- X is 1.
%fact(A,B) :- sub1(A,W) , fact(W,C), mult(C,A,B).


even(0,1).
even(N,Y) :- N>0 , N2 is N-2 , even (N2,Y) , Y is 1.

odd(1).
%numbers greater than one.
odd(X) :- X > 1, | Y is X - 2 , odd(Y).
odd(X) :- X > 0 , Y is X + 2 , odd(Y).