class Cat:
    def __init__(self, name):
        self.name = name

    def __str__(self):
        return self.name

    def __repr__(self):
        return f'{self.__class__.__name__} type {self.name}'

ct = Cat('Alex')
print(str(ct))
print(repr(ct))


class Point:
    def __init__(self, *args):
        self.__cords = args

    def __len__(self):
        return len(self.__cords)
    def __abs__(self):
        return list(map(abs, self.__cords))

pt = Point(1, 2, 3)

print(abs(pt))

res = list(map(lambda x : x**2, [1, 2, 3, 4, - 5, - 6]))
print(res)
