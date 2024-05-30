# https://leetcode.com/problems/add-two-numbers/description/

class ListNode:
    def __init__(self, val, next=None):
        self.val = val
        self.next = next


class Solution:
    def addTwoNumbers(self, l1, l2):
        dummy_head = ListNode(0)
        current = dummy_head
        carry = 0
        while l1 or l2 or carry:
            v1 = l1.val if l1 else 0
            v2 = l2.val if l2 else 0
            summa = v1 + v2 + carry
            carry = summa // 10
            current.next = ListNode(summa % 10)
            current = current.next
            l1 = l1.next if l1 else l1
            l2 = l2.next if l2 else l2

        return dummy_head.next
