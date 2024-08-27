from random import randint
random_number = randint(1000, 10000)


def get_int(prompt: str) -> int:
	while True:
		try:
			user_input = int(input(prompt))
			return user_input if 10000 >= user_input > 1000 else ValueError
		except ValueError:
			print("Please enter a number from 1000 to 10000")


def similar_number(user: int, random: int = random_number) -> int:
	pass


def main():
	user_input = get_int("Please enter a number between 1000 and 10000: ")


if __name__ == '__main__':
	main()
