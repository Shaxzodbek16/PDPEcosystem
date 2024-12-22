class Number:
    def __init__(self, number):
        self.number = number

    def __str__(self):
        return str(self.number)

    def __repr__(self):
        return f"{self.__class__.__name__}: {self.number}"

    def __abs__(self):
        return abs(self.number)

    def __len__(self):
        return len(str(abs(self.number)))


number = Number(-100)

print(len(number))
print(str(number))
print(repr(number))
print(abs(number))
