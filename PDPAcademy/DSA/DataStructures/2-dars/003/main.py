# Task 3. Darsda o`tilgan ArrayList ning Minimum qiymatini 
# topadigan funksiya yarating hamda uning Time Complexity 
# sini aniqlang.
# public void min()

from typing import List


def min(ArrayList: List[int]) -> int:
    min_value = ArrayList[0]
    for i in range(1, len(ArrayList)):
        if ArrayList[i] < min_value:
            min_value = ArrayList[i]
    return min_value

# Time complexity O(n)
# Space complexity O(1)
