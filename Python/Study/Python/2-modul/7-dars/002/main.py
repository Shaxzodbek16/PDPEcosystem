from bisect import bisect
"""0-20 -> 1
21-40 -> 2
41-65 -> 3
66-85 -> 4
86-100 -> 5"""
list_x=[
    0,21,41,66,86,101
]
list_y=[
    1,2,3,4,5,'Unknown'
    ]
while True:
    try:
        n=int(input("\nEnter your score: "))
    except ValueError:
        print("Enter only numbers (0-100)")
        continue
    else:
        print(f"Your mark is {list_y[bisect(list_x, n)-1]}")
        break