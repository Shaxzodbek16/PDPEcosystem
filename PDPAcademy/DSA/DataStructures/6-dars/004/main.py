def find_pairs(arr, k):
    n = len(arr) - 1
    i = 0
    j = i + 1
    list = []
    while i < n - 1:
        if abs(arr[i] - arr[j]) == k:
            list.append({arr[i], arr[j]})
        if j == n:
            i += 1
            j = i + 1
        j += 1
    return list


res = find_pairs([1, 5, 3, 4, 2], 3)
print(res)
