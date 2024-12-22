def find_index(arr, target):
    n = len(arr) - 1
    if n == -1:
        return None
    if n == 1:
        return 0, 1 if sum(arr) == target else None
    i = 0
    j = i + 1
    while i < n - 1:
        if arr[i] + arr[j] == target:
            return i, j
        if j == n:
            i += 1
            j = i + 1
        j += 1
    return None


arr = [5, 6, 11, 2]
target = 8

print(find_index(arr, target))
