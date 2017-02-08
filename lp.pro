/* Question1 */
sum-up-numbers-simple([],0).	%Checking if list is empty then 0

sum-up-numbers-simple([H|T], N):-	%predicate that takes a list and gives result
    number(H),	%if head is a number
    sum-up-numbers-simple(T, Acc),	%recusive call continue through the list
	N is H + Acc.	%assign sum to result

sum-up-numbers-simple([H|T], N):-
    \+number(H),	%if its not a number recusive call next element.
    sum-up-numbers-simple(T, N).


/* Question2 */
sum-up-numbers-general([],0).	%Checking, if list is empty result = 0
sum-up-numbers-general([H|T], N):-	    %Predicate for the sum
    number(H),	%check to see if head(first element) is a number
    sum-up-numbers-general(T, Acc),	%recurse call to get the rest of element
	N is H + Acc.	%Assign sum to the result

sum-up-numbers-general([H|T], N):-
    atom(H),    %Check to see if a single element
    sum-up-numbers-general(T, N).

sum-up-numbers-general([H|T], N):-
    sum-up-numbers-general(T, Acc),    %iterate through the elements in the list
    N is H + Acc.  % assign the added elements to result.


/* Question4 */
common-unique-elements([],_,[]).
common-unique-elements([X|L1], L2, [X|L3]):-
    member(L2,X),!,common-unique-elements(L1,L2,L3).

common-unique-elements([_|L1], L2, L3):-
    common-unique-elements(L1,L2,L3).
    
member([X|_],X).
member([_|T], X):- member(T,X).


