# names = ['Alex', 'Ivan', 'Angela']
#
# dt = {k: v for k, v in enumerate(names)}
# print(dt)
from email.generator import Generator


# lts = [x for x in range(1, 5)]
# print(lts)


# tup = (x for x in range(1, 5))
# print(next(tup), next(tup), next(tup), next(tup))


# def get_list():
#     for num in range(10):
#         yield num
#
# l = get_list()
# for i in l:
#     print(i**2, end=' ')
def is_even(n):
    return n % 2 == 0


def conn(n):
    return (n % 6 == 0) ^ (n % 4 == 0)


def is_prime(n):
    if n <= 1:
        return False
    for num in range(2, int(n**0.5) + 1):
        if n % num == 0:
            return False
    return True


def generate():
    for i in range(100):
        if conn(i):
            yield i


nums = generate()

for i in nums:
    print(i)
