# Task 2. Darsda o`tilgan ArrayList ning Maximum qiymatini topadigan
# funksiya yarating hamda uning Time Complexity sini aniqlang.
# public void max()


from typing import List


def max(ArrayList: List[int]) -> int:
    max_value = ArrayList[0]
    for i in range(1, len(ArrayList)):
        if ArrayList[i] > max_value:
            max_value = ArrayList[i]
    return max_value


# Time complexity O(n)
# Space complexity O(1)
