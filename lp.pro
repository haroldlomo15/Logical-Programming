/* Question1 */
sum-up-numbers-simple([],0).	%Checking if list is empty then 0

sum-up-numbers-simple([H|T], Result):-	%predicate that takes a list and gives result
    number(H),	%if head is a number
    sum-up-numbers-simple(T, Acc),	%recusive call continue through the list
	Result is H + Acc.	%assign sum to result

sum-up-numbers-simple([H|T], Result):-
    \+number(H),	%if its not a number recusive call next element.
    sum-up-numbers-simple(T, Result).


/* Question2 */
sum-up-numbers-general([],0).	%Checking, if list is empty result = 0
sum-up-numbers-general([H|T], Result):-	    %Predicate for the sum
    number(H),	%check to see if head(first element) is a number
    sum-up-numbers-general(T, Acc),	%recurse call to get the rest of element
	Result is H + Acc.	%Assign sum to the result

sum-up-numbers-general([H|T], Result):-
    atom(H),    %Check to see if a single element
    sum-up-numbers-general(T, Result).

sum-up-numbers-general([H|T], Result):-
    sum-up-numbers-general(T, Acc),    %iterate through the elements in the list
    Result is H + Acc.  % assign the added elements to result.

