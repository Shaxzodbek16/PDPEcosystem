# https://leetcode.com/problems/type-of-triangle/description/

class Solution:
    triangleType = lambda self, A: 'none' if sum(sorted(A)[:2]) <= max(A) else "equilateral" if len(set(A)) == 1 else "isosceles" if len(set(A)) == 2 else "scalene"

# too easy
