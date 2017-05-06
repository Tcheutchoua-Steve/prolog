% has(P,C) is true if P has a car matching C
has(joe, car(nissan,8,1000)).
has(joe, car(toyota,5,6000)).
has(mike, car(renault,6,2000)).
has(mike, car(toyota,2,8000)).

% employee(name, dept, position, seniority, basic_sal, boss) are attributes of employee
% the company director is his own boss
employee(joe, marketing, clerk, 6, 50000, mark).
employee(mark, marketing, head, 4, 100000, sue).
employee(sue, company, director, 15, 350000, sue).
employee(sarah, sales, secretary, 6, 75000, john).
employee(joan, sales, accountant, 3, 150000, john).
employee(john, sales, head, 4, 150000, sue).
employee(brian, company, vp, 6, 75000, sue).

%adding some rules to the Kb. 
department(X,Y) :- employee(X,Y,_,_,_,_). 
% Given a person's name, find out their manager 
manager(X,Y) :- employee(X,_,_,_,_,Y).

% Determine if a given name belongs to a valid employee by getting the person’s boss, and then their boss' boss and so on, until we
% end up with the company director.
valid_employee(X) :­ employee(X,_,_,_,_,sue).
valid_employee(X) :­ employee(X,_,_,_,_,Z), \+ (Z=sue),  valid_employee(Z).