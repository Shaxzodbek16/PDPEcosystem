class Queue:
    def __init__(self):
        self.items = []

    def enque(self, item):
        self.items.append(item)  #! it is append item to self.items

    def deque(self):
        return self.items.pop(
            0
        )  #! it is return item which is first of index in list that is called self.items

    def size(self):
        return len(self.items)  #! it is return list size which is called self.items
