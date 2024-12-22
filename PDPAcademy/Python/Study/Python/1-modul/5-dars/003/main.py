"""ax^2 + bx + c = 0 kvadrat tenglama nechta yechimga ega ekanligini hisoblaydigan dastur yozing.
a, b va c o'zgaruvchilarini standart input orqali qabul qiling.

Misollar  
Input: a = 1, b = 4, c = 4
Natija: "Tenglama 1ta yechimga ega"

Input: a = 2, b = 2, c = 4
Natija: "Tenglama 0ta yechimga ega"

Input: a = 1, b = 6, c = 8
Natija: "Tenglama 2ta yechimga ega""" ""

while True:
    try:
        a = int(input("Enter 'a' number:\n>>> "))
        b = int(input("Enter 'b' number:\n>>> "))
        c = int(input("Enter 'c' number:\n>>> "))
        break
    except ValueError:
        print("Please enter a number")

dic = b**2 - 4 * a * c

if dic > 0:
    print("Tenglama 2 ta yechimga ega")
elif dic == 0:
    print("Tenglama 1 ta yechimga ega")
elif dic < 0:
    print("Tenglama yechimga ega emas")
