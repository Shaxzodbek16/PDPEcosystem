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


def main():
    try:
        ...
    except KeyboardInterrupt:
        print("\n\nQuiting the game")
        time.sleep(1)
        print("Bye!")
        time.sleep(.5)


if __name__ == '__main__':
    main()
