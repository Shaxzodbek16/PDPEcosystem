# https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        char_set: set = set()
        left: int = 0
        max_length: int = 0
        for right, char in enumerate(s):
            while char in char_set:
                char_set.remove(s[left])
                left += 1
            char_set.add(char)
            max_length = max(max_length, right - left + 1)

        return max_length
