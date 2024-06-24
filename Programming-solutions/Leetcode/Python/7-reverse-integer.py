# https://leetcode.com/problems/reverse-integer/

class Solution:

    def reverse(self, int_number: int) -> int:
        negative = False
        string_number = str(int_number)
        if string_number[0] == '-':
            string_number = string_number[1::]
            negative = True
        if -pow(2, 31) > int(string_number[::-1])*(-1) if negative else int(string_number[::-1]) > pow(2, 31) - 1 or int_number == 0:
            return 0
        while string_number.endswith("0"):
            string_number = string_number[:-1]
        return int(string_number[::-1])*(-1) if negative else int(string_number[::-1])
