import random
import time
from colorama import Fore


def get_int(string: str) -> int:
    while True:
        try:
            user_input = int(input(string))
            return user_input
        except ValueError:
            print("Please enter a number")


def get_random_number(from_: int, to_: int) -> int:
    return random.randint(from_, to_)


def call_get_random_number() -> int:
    while True:
        first_number = get_int(f"{Fore.GREEN}Please enter a number that start from: ")
        second_number = get_int(f"{Fore.BLUE}Please enter a number that stop to: ")
        if first_number == second_number:
            print(f"{Fore.RED}The numbers are equal, select not equal numbers")
        elif first_number > second_number:
            print(f"{Fore.RED}First numbers are greater than second number, select other numbers")
        else:
            break
    random_number = get_random_number(first_number, second_number)
    return random_number


def main():
    try:
        random_number = call_get_random_number()
        chance: int = 0
        while True:
            chance += 1
            user_guess: int = get_int(f"{Fore.BLUE}Please enter a guess number ")
            if user_guess < random_number:
                print(f"{Fore.RED}You entered a smaller number")
            elif user_guess > random_number:
                print(f"{Fore.RED}You entered a larger number")
            else:
                print(f"{Fore.CYAN}You guessed the correct number in {chance} chance")
                break
    except KeyboardInterrupt:
        print(f"{Fore.RED}\n\nQuiting the program")
        time.sleep(1)
        print(f"{Fore.RED}Bye")
        time.sleep(.5)


if __name__ == '__main__':
    main()
