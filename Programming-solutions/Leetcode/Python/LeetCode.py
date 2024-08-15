class Solution:
    def countPrimes(self, n: int) -> int:
        counter = 0

        def is_prime(num):
            if num <= 1:
                return False
            if num <= 3:
                return True
            if num % 2 == 0 or num % 3 == 0:
                return False
            i = 5
            while i * i <= num:
                if num % i == 0 or num % (i + 2) == 0:
                    return False
            i += 6
            return True

        for j in range(2, n):
            if is_prime(j):
                counter += 1
        return counter


sol = Solution()
print(sol.countPrimes(3))




