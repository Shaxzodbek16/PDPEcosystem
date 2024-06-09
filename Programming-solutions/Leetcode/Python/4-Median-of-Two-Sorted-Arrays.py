# https://leetcode.com/problems/median-of-two-sorted-arrays/

from typing import List


class Solution:
	def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
		nums1.extend(nums2)
		nums1.sort()
		if len(nums1) % 2 == 1:
			return nums1[int(len(nums1)/2)]
		return (nums1[int(len(nums1)/2)] + nums1[int(len(nums1)/2)-1])/2


sol = Solution()
print(sol.findMedianSortedArrays([1, 2], [3, 4]))
