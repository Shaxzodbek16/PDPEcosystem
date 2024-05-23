#  120000 ->1.2*10^5
#  15 000 000 000 -> 1.5*10^10

import math as m
while True:
    try:
        number=float(input("Enter a number:\n>>> "))
        break
    except ValueError:
        print("Enter only number")


power=m.log10(number)
new_num=number/int(10**int(power))

print(f"{number} -> {new_num}*10^{int(power)}")
