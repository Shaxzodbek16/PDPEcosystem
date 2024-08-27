import random
import time

from words import words
import hangman

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
        print("Welcome to Hangman!")
        print("You have 5 guesses to guess the word!")
        print("You have to save hangman!!!")
        now_ = print_(word)
        count: int = 0
        while True:
            user_letter: str = get_str()
            result = check_and_match(user_letter, word, now_)
            if 0 <= count < 2:
                print(hangman.h_1)
            elif 5 > count > 2 or count == 2:
                print(hangman.h_2)
            elif 8 > count > 5 or count == 5:
                print(hangman.h_3)
            elif 10 > count > 8 or count == 8:
                print(hangman.h_4)
            elif 14 > count > 10 or count == 10:
                print(hangman.h_5)
            elif 18 > count > 14 or count == 14:
                print(hangman.h_6)
            count += 1
            for i in result:
                print(i, end=' ')
            if result == list(word):
                print("\nYou save the Hangman!")
                break
            if count == 18:
                print("\nYour man was died!")
                print("You lose !")
                break

    except KeyboardInterrupt:
        print("\n\nQuiting the game")
        time.sleep(1)
        print("Bye!")
        time.sleep(.5)


if __name__ == '__main__':
    main()
