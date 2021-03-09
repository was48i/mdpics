---
title: Fast & Slow Pointers
date: 2021-01-30 16:11:29
tags:
  - CodingInterview
---
The Fast & Slow pointer approach, also known as the `Tortoise & Hare Algorithm`, is a pointer algorithm that uses two pointers which move through the array (or sequence/LinkedList) at different speeds. This approach is quite useful when dealing with cyclic LinkedLists or arrays.

By moving at different speeds (say, in a cyclic LinkedList), the algorithm proves that the two pointers are bound to meet. The fast pointer should catch the slow pointer once both the pointers are in a cyclic loop.

## Snippet
```python
def isPalindrome(self, head: ListNode) -> bool:
    l = r = head
    # obtain the pointer of middle
    while r and r.next:
        l = l.next
        r = r.next.next
    stack = []
    # push the second half to stack
    while l:
        stack.append(l.val)
        l = l.next
    curr = head
    # compare with the first half
    while stack:
        if stack.pop() != curr.val:
            return False
        curr = curr.next
    return True
    
```

## LeetCode
[Linked List Cycle](https://leetcode.com/problems/linked-list-cycle/)
[Linked List Cycle II](https://leetcode.com/problems/linked-list-cycle-ii/)
[Happy Number](https://leetcode.com/problems/happy-number/)
[Middle of the Linked List](https://leetcode.com/problems/middle-of-the-linked-list/)
[Palindrome Linked List](https://leetcode.com/problems/palindrome-linked-list/)
[Reorder List](https://leetcode.com/problems/reorder-list/)
[Circular Array Loop](https://leetcode.com/problems/circular-array-loop/)
