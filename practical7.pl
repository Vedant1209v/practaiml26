% A) Derive the predicate

batsman(sachin).

cricketer(X) :-
    batsman(X).


% B) Prolog fundamentals

student(rahul).
student(priya).
student(amit).

likes(rahul, programming).
likes(amit, programming).
likes(priya, ai).

programmer(X) :-
    student(X),
    likes(X, programming).

ai_student(X) :-
    student(X),
    likes(X, ai).


student(rahul).
cricketer(sachin).
student(Vedant).
programmer(rahul).
ai_student(priya).
ai_student(Vedant).
ai_student(rahul).