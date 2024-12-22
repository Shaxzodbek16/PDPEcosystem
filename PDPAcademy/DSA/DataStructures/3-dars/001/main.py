# Task 1. Darsda o`tilgan LinkedList dan berilgan
# elementni qidiradigan Search funksiya yarating
# hamda uning Time Complexity sini aniqlang.
# public boolean search(int item)


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
