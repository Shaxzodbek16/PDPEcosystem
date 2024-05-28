import random
import time

from words import words

word: str = random.choice(words)


def get_str() -> str:
    while True:
        try:
            string: str = input("\nEnter a letter: ").lower()
            if len(string) != 1 or not isinstance(string, str):
                raise ValueError
            else:
                return string
        except ValueError:
            print("Invalid input")


def print_(finding: str, user_letter: str) -> str:
    now_: str = ''
    for letter in finding:
        if letter == user_letter:
            print(user_letter, end=" ")
            now_ += letter+' '
        print("_", end=" ")
        now_ += "_ "
    return now_


def main():
    try:
        while True:
            user_letter = get_str()
            now_ = print_(word, user_letter)
            print(now_)

    except KeyboardInterrupt:
        print("\n\nQuiting the game")
        time.sleep(1)
        print("Bye!")
        time.sleep(.5)


if __name__ == '__main__':
    main()
