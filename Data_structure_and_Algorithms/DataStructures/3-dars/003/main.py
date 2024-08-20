# Task 3. Darsda o`tilgan LinkedList ning o`rtadagi 
# qiymatini topadigan funksiya yarating hamda 
# uning Time Complexity sini aniqlang.
# public void printMiddle()

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