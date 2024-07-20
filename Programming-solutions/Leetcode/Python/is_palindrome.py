from string import ascii_lowercase


class Solution:
    def isPalindrome(self, text):
        processed_text = "".join(char.lower() for char in text if char.isalnum())
        left, right = 0, len(processed_text) - 1
        while left < right:
            if processed_text[left] != processed_text[right]:
                return False
            left += 1
            right -= 1
        return True
