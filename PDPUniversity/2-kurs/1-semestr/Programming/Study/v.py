#  *  *  *  *  *
#  *  *  *  *  *
#  *  *  *  *  *
#  *  *  *  *  *
#     *  *  *
#        *

n = 11
if n % 2 ==0:
    n-=-1
for i in range(n):
    if n // 2 + 1== i: break
    for j in range(0, n):
        if i == j or i + j == n-1:
            print("*", end='')
        else:
            print(' ', end='')
    print()
