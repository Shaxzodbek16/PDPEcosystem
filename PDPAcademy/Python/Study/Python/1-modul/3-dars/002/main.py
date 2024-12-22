#  we get input from user
name_of_user = input("Enter your name.\n>>> ").strip()
surname_of_user = input("Enter your surname.\n>>> ").strip()
# it is "f" string
# print(f"Hello {name_of_user.title()}, ")
# It is printed with add
hello = (
    "Hello "
    + name_of_user.title()
    + " "
    + surname_of_user.title()
    + ", welcome to PDP!"
)

print(hello)
