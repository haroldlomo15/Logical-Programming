/* Question1 */
sumList([],0).	%Checking if list is empty then 0

sumList([H|T], Result):-	%predicate that takes a list and gives result
    number(H),	%if head is a number
    sumList(T, Acc),	%recusive call continue through the list
	Result is H + Acc.	%assign sum to result

sumList([H|T], Result):-
    \+number(H),	%if its not a number recusive call next element.
    sumList(T, Result).