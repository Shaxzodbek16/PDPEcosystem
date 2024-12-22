# int type immutable
# str type immutable
# id(arg) check memory address of the arg
# [2:10:2] [start, stop, step] in Iterable
# print()
# input()

# name, surname, phone = input("What is your name? "), input("What is your surname? "), input("What is your phone number? ")
# print(f"hello, {name}")
# print(f"you are {surname}")
# print(f"We will send a mail to {phone}")


list_: list[str] = ["one", "two", "three", "four"]

while True:
    try:
        number: int = int(input("Enter a number: "))
        break
    except ValueError:
        print("Please enter a number")

match number:
    case 1:
        print(list_[0])
    case 2:
        print(list_[1])
    case 3:
        print(list_[2])
    case 4:
        print(list_[3])
    case _:
        print("Number not found in our collection")

if number == 1:
    print(list_[0])
elif number == 2:
    print(list_[1])
elif number == 3:
    print(list_[2])
elif number == 4:
    print(list_[3])
else:
    print("Number not found in our collection")
