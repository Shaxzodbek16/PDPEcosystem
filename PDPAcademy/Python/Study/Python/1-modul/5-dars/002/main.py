while True:
    try:
        user_input = float(input("Enter a number:\n>>> "))
        break
    except ValueError:
        print("Please enter a number.")
if user_input%3==0 and user_input%5==0:
    print("FizBiz")
elif user_input%3==0:
    print("Fiz")
elif user_input%5==0:
    print("Biz")
else:
    print(user_input)