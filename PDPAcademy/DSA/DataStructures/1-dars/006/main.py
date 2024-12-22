# Task 6.
# Sonning tub yoki tub emasligini topadigan dastur yozing
# va bu dasturning Time va Space Complexity larini aniqlang.


def isPrime(number: int) -> bool:
    if number < 2:
        return False
    for i in range(2, int(number**0.5) + 1):
        if number % i == 0:
            return False
    return True


def main() -> None:
    result = isPrime(20)
    print(result)


if __name__ == "__main__":
    main()

# Time complexity O(n)
# Space Complexity O(1)
