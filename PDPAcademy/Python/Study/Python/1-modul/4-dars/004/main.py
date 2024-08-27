from math import gcd
print("This is find EKUB what two integers")
while True:
    try:
        first_number =int(input("Enter first number:\n>>> "))
        break
    except ValueError:
        print("Please enter a number")
while True:
    try:
        second_number =int(input("Enter second number:\n>>> "))
        break
    except ValueError:
        print("Please enter a number")

# 12=2*2*3
# 20=2*2*5
ekub= gcd(first_number,second_number)
# the below code fragment can be found in:

# while first_number!=0 and second_number!=0:
#     if first_number>second_number:
#         first_number%=second_number
#     else:
#         second_number%=first_number
#     ekub=first_number+second_number
print(f"EKUB is {ekub} :)")




