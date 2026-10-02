% Facts

male(john).
male(paul).
male(mike).
male(david).
male(james).
male(robert).
male(tom).

female(mary).
female(susan).
female(lisa).
female(anna).
female(emily).
female(karen).
female(jane).

% Parent(Parent, Child)

parent(john, paul).
parent(mary, paul).

parent(john, lisa).
parent(mary, lisa).

parent(paul, david).
parent(susan, david).

parent(paul, anna).
parent(susan, anna).

parent(mike, emily).
parent(karen, emily).

parent(mike, james).
parent(karen, james).

parent(david, tom).
parent(anna, jane).

% Father

father(X, Y) :-
    male(X),
    parent(X, Y).


% Mother

mother(X, Y) :-
    female(X),
    parent(X, Y).


% Grandfather

grandfather(X, Y) :-
    male(X),
    parent(X, Z),
    parent(Z, Y).


% Grandmother

grandmother(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y).


% Brother

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.


% Sister

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.


% Uncle

uncle(X, Y) :-
    male(X),
    parent(P, Y),
    brother(X, P).


% Aunt

aunt(X, Y) :-
    female(X),
    parent(P, Y),
    sister(X, P).


% Nephew

nephew(X, Y) :-
    male(X),
    (uncle(Y, X) ; aunt(Y, X)).


% Niece

niece(X, Y) :-
    female(X),
    (uncle(Y, X) ; aunt(Y, X)).


% Cousin

cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    (brother(P1, P2) ; sister(P1, P2)),
    X \= Y.

       John ───── Mary
           │
      ┌────┴────┐
      │         │
    Paul       Lisa

#
father(john, paul).
mother(mary, lisa).
grandfather(john, david).
grandmother(mary, anna).
brother(lisa, paul).#