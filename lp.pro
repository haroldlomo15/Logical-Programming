
sumList([],0).
sumList([H|T], Result):-
    number(H),
    sumList(T, Acc),
	Result is H + Acc.

sumList([H|T], Result):-
    \+number(H),
    sumList(T, Result).