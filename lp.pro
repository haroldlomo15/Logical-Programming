/* Question1 */
sum-up-numbers-simple([],0).	%Checking if list is empty then 0

sum-up-numbers-simple([H|T], Result):-	%predicate that takes a list and gives result
    number(H),	%if head is a number
    sum-up-numbers-simple(T, Acc),	%recusive call continue through the list
	Result is H + Acc.	%assign sum to result

sum-up-numbers-simple([H|T], Result):-
    \+number(H),	%if its not a number recusive call next element.
    sum-up-numbers-simple(T, Result).