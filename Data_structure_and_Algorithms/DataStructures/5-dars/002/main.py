from collections import deque

def reverse_k(queue, k):

  if not queue or k <= 0:
    return

  stack = []
  for _ in range(k):
    stack.append(queue.popleft())

  while stack:
    queue.appendleft(stack.pop())

  for _ in range(len(queue) - k):
    queue.append(queue.popleft())

queue = deque([1, 2, 3, 4, 5])
k = 3
reverse_k(queue, k)
print(queue)
