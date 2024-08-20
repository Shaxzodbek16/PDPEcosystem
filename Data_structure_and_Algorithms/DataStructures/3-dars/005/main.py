# Task 5. Darsda o`tilgan LinkedList ning elementlarini 
# teskarisiga o`zgartiradigan funksiya yarating hamda 
# uning Time Complexity sini aniqlang.
# public void reverse()

class Node(object):
    def __init__(self, data=None):
        self.data = data
        self.next = None

    def search(self, item):
        current = self
        while current is not None:
            if current.data == item:
                return True
            current = current.next
        return False
    # Time Complexity O(n)
    # Space Complexity O(1)
    
    def lastIndexOf(self, item):
        current = self
        last_index = -1
        index = 0
        while current is not None:
            if current.data == item:
                last_index = index
            current = current.next
            index += 1
        return last_index
    # Time Complexity O(n)
    # Space Complexity O(1)
    
    def printMiddle(self):
        slow = self
        fast = self
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
        print("Middle element is: ", slow.data)
    
    # Time Complexity O(n)
    # Space Complexity O(1)
    
    def getKthFromEnd(self, k):
        slow = self
        fast = self
        for _ in range(k):
            if fast is None:
                return None
            fast = fast.next
        while fast:
            slow = slow.next
            fast = fast.next
        return slow.data
    # Time Complexity O(n)
    # Space Complexity O(1)
    
    def reverse(self):
        prev = None
        current = self
        while current:
            next_node = current.next
            current.next = prev
            prev = current
            current = next_node
        self.head = prev
    
    # Time Complexity O(n)
    # Space Complexity O(1)
