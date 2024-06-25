# https://leetcode.com/problems/string-to-integer-atoi/

class Solution:

    def is_first_digit(self, string: str) -> bool:
        first = string[0]
        try:
            first = int(first)
            return True
        except ValueError:
            return False

    def myAtoi(self, string: str) -> int:
        positive: bool = False
        if string.startswith("-"): positive = True
        string = string.strip()
        if self.is_first_digit(string): return 0
        making_number: str
        while self.is_first_digit(string):
            making_number+=string[0]
            string=string[1::]



