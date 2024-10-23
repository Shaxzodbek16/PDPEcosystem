# password: str = 'PDPStudent'
# user_password: str = input('Enter password: ')
# while password != user_password: user_password: str = input('Enter a correct password.\n>>> ')


# son kiradi, stop desa to'xtaydi, sonlardan jusflarini qo'shish kerak
even_sum = 0
while True:
    user_input = input("Enter a number: ")
    if user_input == "stop":
        break
    if user_input.isdigit():
        num = int(user_input)
        if num % 2 == 0:
            even_sum +=num
    else:
        print("Enter a valid number or stop")

print(even_sum)