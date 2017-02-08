
sum-up-numbers-simple([H|T], N):-
    sumHelp(T, H, N).

sumHelp([], Acc, Acc). /*Base Case*/

sumHelp([H|T], Acc, Result):-
    number(H), 
    NewAcc is H + Acc,
    sumHelp(T, NewAcc, Result).

