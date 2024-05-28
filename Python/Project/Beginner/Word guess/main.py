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


def print_(finding: str) -> list:
    now_: list = []
    for _ in finding:
        now_.append('_')
    return now_


def check_and_match(user_letter: str, finding: str, now_) -> str:
    for i in range(len(finding)):
        if finding[i] == user_letter:
            now_[i] = user_letter
    return now_


def main():
    try:
        now_ = print_(word)
        count: int = 10
        while True:
            if count == 10:
                print("\nYou have a ten-chance to find the word, let's guess a letter !")
            else:
                print(f"\n\nYou have a {count} to find the word!")
            count -= 1
            user_letter: str = get_str()
            result = check_and_match(user_letter, word, now_)
            for i in result:
                print(i, end=' ')
            if result == list(word):
                print("\nYou are right!")
                break
            if count == 0:
                print("\nYou have no more chance to find the word!")

    except KeyboardInterrupt:
        print("\n\nQuiting the game")
        time.sleep(1)
        print("Bye!")
        time.sleep(.5)


if __name__ == '__main__':
    main()
