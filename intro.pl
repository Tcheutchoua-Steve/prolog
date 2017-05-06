likes(mary,food).
likes(mary,wine).
likes(john,wine).
likes(john,mary).

% John likes anything that Mary likes 
likes(john,X) :- likes(mary,X).
% John likes anyone who likes wine
likes(john,X) :- likes(X,wine).