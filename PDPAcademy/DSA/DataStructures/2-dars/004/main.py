# Darsda o`tilgan ArrayList ning qiymatlarini teskariga
# almashtiradigan Reverse funksiya yarating hamda uning
# Time  Complexity sini aniqlang.
# public void reverse()

from typing import List


def reverse(ArrayList: List[int]) -> List[int]:
    low, high = 0, len(ArrayList) - 1
    while low < high:
        ArrayList[low], ArrayList[high] = ArrayList[high], ArrayList[low]
        low, high = low + 1, high - 1
    return ArrayList


# Time complexity O(n)
# Space complexity O(1)
