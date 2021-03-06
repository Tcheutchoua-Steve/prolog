male(james1).
male(charles1).
male(charles2).
male(james2).
male(george1).

female(catherine).
female(elizabeth).
female(sophia).

%parent(P,C) is true is P is the parent of C.
parent(james1, charles1).
parent(james1, elizabeth).
parent(charles1, charles2).
parent(charles1, catherine).
parent(charles1, james2).
parent(elizabeth, sophia).
parent(sophia, george1).


% Introducing the mother relationship.
mother(M,X) :- parent(M,X), female(M).
% father if parent and is a male
father(F,X) :- parent(F,X), male(F).
% siblings if they have the same parent.
sibling(X,Y) :- parent(P,X), parent(P,Y), (X \= Y).