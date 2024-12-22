def greating(name=""):  # you can use without arguments, so it is true .
    """Salom deydigan greeting nomli funksiya tuzing va unga docstring yozing."""
    if name:
        print(f"Hello {name.title()}, ", end="")
    else:
        print("Hello, ", end="")
    print("welcome to PDP!")


greating()
greating("Deydigan")
