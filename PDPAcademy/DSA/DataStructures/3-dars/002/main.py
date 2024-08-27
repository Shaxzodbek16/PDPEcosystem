# Task 2. Darsda o`tilgan LinkedList dan qidirilayotgan 
# elementning ohirgi index ni topadigan funksiya 
# yarating hamda uning Time Complexity sini aniqlang.
# public void lastIndexOf(int item)

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
    
    