# example = lambda x, y : x+y
#
#
# def get_filter(a, filter_=None):
#     if filter_ is None:
#         return a
#
#     res = []
#
#     for i in a:
#         if filter_(i):
#             res.append(i)
#     return res
#
#
# result = get_filter(list(range(1,100)), lambda x: x % 13 == 0)
#
# print(result)
#
def sum_of_numbers(son):
    if son < 10:
        return son
    return son % 10 + sum_of_numbers(son // 10)


print(sum_of_numbers(345))
