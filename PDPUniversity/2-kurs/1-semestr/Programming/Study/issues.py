def generate(n: int) -> list[list[int]]:
    result: list[list[int]] = [[1]]
    if n == 1:
        return result
    result.append([1, 1])
    if n == 2:
        return result
    for i in range(2, n):
        temp = []
        l, h = 1, len(result[i-1]) - 1
        temp.append(1)
        while l <= h:
            temp.append(result[i-1][l] + result[i-1][l-1])
            l+=1
        temp.append(1)
        result.append(temp)
    return result


print(generate(10))
