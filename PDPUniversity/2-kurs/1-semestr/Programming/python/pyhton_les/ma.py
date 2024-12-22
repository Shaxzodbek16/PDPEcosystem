n = int(input("Number: "))

for i in range(1, n * n + 1, n):
    for j in range(i, i + n):
        print(j, end=" ")
    print()
