# Task 1. Priority Queue ni java.util dagi holatini darsda o`rgandik.
# Va shu Priority Queue ni Array dan foydalanib o`zingiz yaratib ko`rsating


class PriorityQueue:
    def __init__(self):
        self.queue = []

    def enqueue(self, item):
        self.queue.append(item)

    def dequeue(self):
        if len(self.queue) == 0:
            return None
        max_index = self.queue.index(max(self.queue))
        return self.queue.pop(max_index)

    def is_empty(self):
        return len(self.queue) == 0


my_queue = PriorityQueue()
my_queue.enqueue(3)
my_queue.enqueue(5)
my_queue.enqueue(1)

print(my_queue.dequeue())
print(my_queue.dequeue())
