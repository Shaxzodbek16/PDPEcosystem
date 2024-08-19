import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6])

newArr = np.array_split(arr, 3)

print(newArr)
print(newArr[0])
print(newArr[1])
print(newArr[2])
