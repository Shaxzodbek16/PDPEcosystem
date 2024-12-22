# Task 3. Darsda o`tilgan Stack ning elementlaridan eng kichik
# qiymatini topadigan funksiya yarating hamda uning Time
# Complexity sini aniqlang.
# public int min()

# from collections import deque # build in stack


class Stack:
    def __init__(self):
        self.stack = []

    def __len__(self):
        return len(self.stack)

    def peek(self):
        if not self.isEmpty():
            return self.stack[-1]
        else:
            return None

    def isEmpty(self):
        return len(self.stack) == 0

    def push(self, item):
        self.stack.append(item)

    def pop(self):
        if not self.isEmpty():
            return self.stack.pop()
        else:
            return None

    # Time Complexity O(1)
    # Space Complexity O(-)
    def min(self):
        if not self.isEmpty():
            return min(self.stack)
        else:
            return None


stack = Stack()

stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
last = stack.peek()
print("Last element is:", last)
