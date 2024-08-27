# Task 5. Darsda o`tilgan ArrayList ning qiymatlari 
# va berilgan array ning qiymatlari orasida umumiy 
# bo`lgan qiymatlarni array shaklida qaytaradigan 
# Intersect funksiya yarating hamda uning Time 
# Complexity sini aniqlang.
# public int[] intersect(int[] arr

from typing import List

def intersect(arr1: List[int], arr2: List[int]) -> List[int]:
    result: List[int] = []
    for num in arr1:
        if num in arr2 and num not in result:
            result.append(num)
    return result

# Time complexity O(n)
# Space complexity O(n)
