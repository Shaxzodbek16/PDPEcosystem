while True:
    try:
        user_input = int(input("Enter a number:\n>>> "))
        break
    except ValueError:
        print("Please enter a number\n")
if user_input % 2 == 0:
    print(f"{user_input} is even")
else:
    print(f"{user_input} is odd")
