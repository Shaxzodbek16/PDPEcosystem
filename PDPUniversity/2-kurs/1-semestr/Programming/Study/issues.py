# def generate(n: int) -> list[list[int]]:
#     result: list[list[int]] = [[1]]
#     if n == 1:
#         return result
#     result.append([1, 1])
#     if n == 2:
#         return result
#     for i in range(2, n):
#         temp = []
#         l, h = 1, len(result[i-1]) - 1
#         temp.append(1)
#         while l <= h:
#             temp.append(result[i-1][l] + result[i-1][l-1])
#             l+=1
#         temp.append(1)
#         result.append(temp)
#     return result
#
#
# print(generate(10))

def check(word1, word2, curr):
    n = min(len(word1), len(word2), len(curr))
    i = 0
    res = ''
    while n != 0:
        if word1[i] == word2[i] == curr[i]:
            res += word1[i]
            n -= 1
            i += 1
            continue
        else:
            return res
    return res


def longestCommonPrefix(words: list) -> str:
    result = ''
    if not words: return result
    result = words[0]
    l, h = 0, len(words) - 1
    while l != h:
        result = check(words[l], words[l + 1], result)
        l += 1
    return result


result1 = longestCommonPrefix(["flower", "flow", "flight"])
print(result1)
