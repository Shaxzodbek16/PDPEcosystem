import datetime
from contextlib import contextmanager

#! This is first way.


class Log:
    def __init__(self, filename="", mode="r"):
        self.filename = filename
        self.type = type = "r"
        self.mode = mode
        self.opened_file = None

    def __enter__(self):
        start = datetime.datetime.now()
        print(f"\n - context manager opened at {start.strftime('%H:%M:%S')}\n")
        file = open(self.filename, self.mode)
        self.opened_file = file
        return file

    def __exit__(self, exc_type, exc_val, exc_tb):
        stop = datetime.datetime.now()
        print(f"\n - context manager closed at {stop.strftime('%H:%M:%S')}\n")
        self.opened_file.close()


with Log("text.txt", "r") as file:
    print("Hello", end="\n")

#!  This is second way.


@contextmanager
def log(filename, mode="r"):
    start = datetime.datetime.now()
    print(f"\n - context manager opened at {start.strftime('%H:%M:%S')}\n")
    file = open(filename, mode)
    try:
        yield file
    finally:
        file.close()
        stop = datetime.datetime.now()
        print(f"\n - context manager closed at {stop.strftime('%H:%M:%S')}\n")


with log("text.txt", "r") as text:
    print("Hello\n", end="")


# ! both of the ways are working
# ~ :)
