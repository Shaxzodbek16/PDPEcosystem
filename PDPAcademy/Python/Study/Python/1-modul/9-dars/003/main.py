def is_fi_biz(son):
    if son % 15 == 0:
        return "FizzBuzz"
    elif son % 3 == 0:
        return "Fizz"
    elif son % 5 == 0:
        return "Buzz"
    else:
        return son


while True:
    try:
        user_input = int(input("Enter a number:\n>>> "))
        break
    except ValueError:
        print("Please enter a number\n")
list_ = []
for i in range(1, user_input + 1):
    list_.append(is_fi_biz(i))

print(list_)
