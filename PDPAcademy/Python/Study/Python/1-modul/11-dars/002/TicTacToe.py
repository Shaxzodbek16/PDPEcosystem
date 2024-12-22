def get_name():
    user1 = input("1-user Name.\n>>> ")
    user2 = input("2-user Name.\n>>> ")
    return user1, user2


def get_int():
    while True:
        try:
            number = int(input("Enter a number:\n>>> "))
            return number
        except ValueError:
            print("Please enter a number\n")


# def choose_one():
#     while True:
#         try:
#             option=input("select 'o' or 'x'")
#             if option=='o' or option=='x':
#                 break
#             else:
#                 ValueError
#         except ValueError:
#             print("please select 'o' or 'x'")


def tictactoe():
    user1, user2 = get_name()
    print(f"Hello, {user1} select 'x', {user2} select 'o'")
    list_3x3 = [["-", "-", "-"], ["-", "-", "-"], ["-", "-", "-"]]
    for i in range(3):
        for j in range(3):
            print(list_3x3[i][j], end=" ")
        print()


tictactoe()
