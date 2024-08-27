def binary_search(content, item):
    low = 0
    high = len(content) - 1
    while low <= high:
        mid = (low + high)//2
        guess = content[mid]
        if guess == item:
            return mid
        if guess > item:
            high = mid - 1
        else:
            low = mid + 1
    return None


list_: list[int] = [1, 3, 4, 6, 7, 8, 10, 12, 23]
print(binary_search(list_, 6))
