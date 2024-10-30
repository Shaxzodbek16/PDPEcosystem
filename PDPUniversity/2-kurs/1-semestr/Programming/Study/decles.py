from datetime import datetime
from time import sleep


def time(func):
    def wrapper(*args, **kwargs):
        start = datetime.now()
        res = func(*args, **kwargs)
        end = datetime.now()
        print(f"{func.__name__} took {end - start}")
        return res

    return wrapper


@time
def hello():
    sleep(2)
    print("hello")


def main():
    hello()


if __name__ == "__main__":
    main()
