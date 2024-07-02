# https://leetcode.com/problems/string-to-integer-atoi/

class Solution:
    def myAtoi(self, s: str) -> int:
        number = 0
        is_negative = False
        sign_received = False
        number_received = False
        for char in s:
            if char == ' ' and not number_received and not sign_received:
                continue
            elif char == '-':
                if sign_received:
                    break
                is_negative = True
                sign_received = True
            elif char == '+':
                if sign_received:
                    break
                sign_received = True
            elif char.isdigit():
                number_received = True
                sign_received = True
                number = number * 10 + int(char)
                if number > 2 ** 31 - 1:
                    return -2 ** 31 if is_negative else 2 ** 31 - 1
            else:
                break
        return -number if is_negative else number


if __name__ == '__main__':
    solution = Solution()
    print(solution.myAtoi('-5-'))
