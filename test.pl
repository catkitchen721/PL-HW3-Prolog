isParent(A, B) :- isMom(A, B). % If A is B's Mom, A is B's parent.
isParent(A, B) :- isDad(A, B).
isGrandparent(A, C) :- isParent(A, B), isParent(B, C).
isSelf(A) :- unify_with_occurs_check(A, isSelf(A)).
car(X, L) :- L = [X|_].
addOneToHead([H|T], X) :- Y is H + 1, X = [Y|T].
isMom('MFM', 'JJG').
isMom('JFL', 'JXWEN').
isMom('JFL', 'JXWU').
isDad('JJS', 'JJG').
isDad('JJG', 'JXWEN').
isDad('JJG', 'JXWU').
