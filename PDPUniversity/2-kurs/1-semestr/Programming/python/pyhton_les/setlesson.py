# l = {1, 2, 3, 4}
# m = {True, 3, 4, 5, 6, 7}
#
# print(m | l)  # intersection
# print(m & l)  # union
# print(m - l)  # difference
# print(m ^ l)  #
from dataclasses import dataclass
from typing import Tuple, Any


# def max_finder(a: int, b: int) -> int:
#     """
#     :param a: int
#     :param b: int
#     :return: int: the biggest one, if both of them are equal, It will return "a"
#     """
#     if a > b:
#         return a
#     elif b > a:
#         return b
#     return a
#
#
# def max_finder2(a: int, b: int, c: int) -> int:
#     return max_finder(max_finder(a, b), c)
#
#
# print(max_finder2(4, 2, 6))
# print(max_finder2(4, 8, 1))
# print(max_finder2(9, 2, 3))
# print(max_finder2(5, 5, 5))

def _(data, max_price=False, min_price=False):
    item_name = data[0]['name']
    if max_price:
        max_price = data[0]['price']
        for i in data:
            if i['price'] > max_price:
                max_price = i['price']
                item_name = i['name']
        return item_name, max_price
    min_price = data[0]['price']
    if min_price:
        for i in data:
            if i['price'] < min_price:
                min_price = i['price']
                item_name = data[0]['name']
        return item_name, min_price

__ = [
    {
        'name': 'laptop',
        'price': 1500
    },
    {
        'name':'smartphone',
        'price': 1000
    },
    {
        'name': 'watch',
        'price': 700
    },
    {
        'name': 'Headphone',
        'price': 500
    }
]
print(*_(__, max_price=True))

