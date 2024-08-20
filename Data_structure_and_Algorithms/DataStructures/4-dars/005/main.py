# Task 5. Darsda o`tilgan TwoStack uchun pop1 va pop2 funksiyalarni yarating 
# hamda uning Time Complexity sini aniqlang.
# public int pop1()
# public int pop2()
# from collections import deque # build in stack


class TwoStack(object):
    def __init__(self):
        self.stack1 = []
        self.stack2 = []
    
    def push1(self, item):
        self.stack1.append(item)
    
    def push2(self, item):
        self.stack2.append(item)
    
    def isEmpty1(self):
        return len(self.stack1) == 0
    
    def isEmpty2(self):
        return len(self.stack2) == 0
    # Time complexity O(1)
    def pop1(self):
        if not self.isEmpty1():
            return self.stack1.pop()
        else:
            return None
    # Time complexity O(1)
    def pop2(self):
        if not self.isEmpty2():
            return self.stack2.pop()
        else:
            return None