"""Darsda yaratilgan tahmin qilish o'yinini \
o'zgartiring: 3 marta xato taxmindan so'ng  o'yinni to'xtatib\
foydalanuvchi yutqizganligi haqida ekranga chiqaradigan kod yozing."""

import random

game_over = ValueError


def random_number():

    return random.randint(1, 11)


def check(user_number, random_number):

    if user_number > random_number:
        return f"Men o'ylagan son {user_number} dan kichik.\n"

    elif user_number < random_number:
        return f"Men o'ylagan son {user_number} dan katta.\n"

    raise game_over


def main():
    print("\n\nMen 1-10 oralig'ida son o'ylayman siz topasiz. Qani kettik.✍️\n")
    chance = 3

    random_number_ = random_number()

    try:

        while True:

            if chance == 3:
                print("Sizda 3 ta imkoniyat bor.\n")

            elif chance == 2:
                print("Sizda 2 ta imkoniyat qoldi.\n")

            elif chance == 1:
                print("Sizda 1 ta imkoniyat qoldi.\n")
            if chance == 0:
                print(
                    "Afsuski sizning urinishlaringiz tugadi.\nSiz mag'lub bo'ldingiz.\n"
                )
                break
            user_number = int(input(f"{4-chance}-imkonni kiriting:\n>>> "))

            massage = check(user_number, random_number_)
            print(massage)
            chance -= 1

    except game_over:
        print(f"Tabliklaymiz, siz yuttingiz🥳 \n")


if __name__ == "__main__":
    main()
