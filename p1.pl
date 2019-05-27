% filename: p1.pl
% Goldbach's conjecture
isPrime(X) :- integer(X), 0 =\= mod(X, 2), \+ divided_by(X, 2).
divided_by(X, Y) :- 0 =:= mod(X, Y).
divided_by(X, Y) :- X > Y*Y, Z is Y + 1, divided_by(X, Z).
getPrime_from(From, New, Out) :- From =\= New, isPrime(From), isPrime(New), Out is New.
getPrime_from(From, New, Out) :- isPrime(From), TempNew is New + 1, getPrime_from(From, TempNew, Out).


