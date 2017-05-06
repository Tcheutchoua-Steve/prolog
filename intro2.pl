likes(mary,food).
likes(mary,wine).
likes(john,wine).
likes(john,mary).

%Adding john likes something that mary likes
likes(john,X) :- likes(mary,X).

%John likes something if marry lies wine
likes(john,X) :- likes(X,wine).