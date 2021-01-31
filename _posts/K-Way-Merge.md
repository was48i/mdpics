---
title: K-Way Merge
date: 2021-01-31 23:08:23
tags:
  - CodingInterview
---
This pattern helps us solve problems that involve a list of sorted arrays.

Whenever we are given 'K' sorted arrays, we can use a `Heap` to efficiently perform a sorted traversal of all the elements of all arrays. We can push the smallest (first) element of each sorted array in a `Min Heap` to get the overall minimum. While inserting elements to the Min Heap we keep track of which array the element came from. We can, then, remove the top element from the heap to get the smallest element and push the next element from the same array, to which this smallest element belonged, to the heap. We can repeat this process to make a sorted traversal of all elements.

## LeetCode
[Merge k Sorted Lists](https://leetcode.com/problems/merge-k-sorted-lists/)
[Kth Smallest Element in a Sorted Matrix](https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/)
[Smallest Range Covering Elements from K Lists](https://leetcode.com/problems/smallest-range-covering-elements-from-k-lists/)
[Find K Pairs with Smallest Sums](https://leetcode.com/problems/find-k-pairs-with-smallest-sums/)
