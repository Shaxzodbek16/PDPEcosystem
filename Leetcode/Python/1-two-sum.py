# https://leetcode.com/problems/two-sum/description/

class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        num_map = {}
        for i, num in enumerate(nums):
            complement = target - num
            if complement in num_map:
                return [num_map[complement], i]
            num_map[num] = i
        return []

# enumerate is what?

# fruits = ["apple", "banana", "cherry"]
# for index, fruit in enumerate(fruits):
#     print(f"Fruit at index {index}: {fruit}")
#
# Fruit at index 0: apple
# Fruit at index 1: banana
# Fruit at index 2: cherry

