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

/* Question3 */
min-above-min(L1, L2, N):-  %predicate for the min-above-min
    listlength(L2, Size),   %check size of list
    Size < 1,   
    minList(L1, N).

min-above-min(L1, _, N):-
    listlength(L1, Size),
    Size < 1,
    N is -1.

min-above-min(L1, L2, N):-
    minList(L2, Min_of_L2),
    list_above_min(Min_of_L2, L1, New_list),
    minList(New_list, N).


/* Question4 */
common-unique-elements([],_,[]).    %Check if list 1 is empty then result is empty
common-unique-elements([H|L1], L2, [H|L3]):-    %Recursively get the first element in the list
    member(L2,H),!,common-unique-elements(L1,L2,L3).    %Check to see if 1st element of list one is common to that in list 2

common-unique-elements([_|L1], L2, L3):-
    common-unique-elements(L1,L2,L3).   %Recursively get the rest of the elemnts in the list
    
member([H|_],H).    %Check if head of each are equal.
member([_|T], H):- member(T,H).


