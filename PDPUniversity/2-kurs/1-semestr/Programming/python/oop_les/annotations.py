def say_hello(name: str) -> str:
    return f"Hello, {name}!"


def add(a: int, b: int) -> int:
    return a + b


def multiply(a: int, b: int) -> int:
    return a * b


def divide(a: int, b: int) -> float:
    try:
        return a / b
    except ZeroDivisionError:
        raise ValueError("You cannot divide by zero!")


def subtract(a: int, b: int) -> int:
    return a - b


def power(a: int, b: int) -> int:
    return a ** b

