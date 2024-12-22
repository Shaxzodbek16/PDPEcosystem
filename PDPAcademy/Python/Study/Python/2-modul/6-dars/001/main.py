import datetime


def log(func):
    def inner():
        start = datetime.datetime.now()
        print(
            f"\n - called function: {func.__name__} at {start.strftime('%H:%M:%S')}\n"
        )
        func()
        end = datetime.datetime.now()
        print(
            f"\n - finished function: {func.__name__} at {end.strftime('%H:%M:%S')}\n"
        )

    return inner


@log
def hello():
    print("Hello")


hello()
