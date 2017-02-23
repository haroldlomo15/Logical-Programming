# Logical-Programming

1. Write a predicate sum-up-numbers-simple(L, N). L is a list, which may contain as elements numbers and non-numbers. The predicate is true if N is the sum of the numbers not in nested lists in L. If there are no such numbers, the result is zero.

 
2. Write a predicate sum-up-numbers-general(L, N). L is a list, which may contain as elements numbers and non-numbers. The predicate is true if N is the sum of all the numbers (including those in nested lists) in L. If there are no such numbers, the result is zero.

3. Write a predicate min-above-min(L1, L2, N). L1 and L2 are both simple lists, which do not contain nested lists. Both lists may have non-numeric elements. The predicate is true if N is the minimum of the numbers in L1 that are larger than the smallest number in L2. If there is no number in L2, all the numbers in L1 should be used to calculate the minimum. If there is no number in L1 larger than the smallest number in L2, the predicate is false.

4. Write a predicate common-unique-elements(L1,L2,N). L1 and L2 are both general lists, which may contain nested lists. The predicate is true if N is a simple list (i.e. a list without sub-lists) of the items that appear in both L1 and L2 (including the sub-lists within). The elements in the result list must be unique.
