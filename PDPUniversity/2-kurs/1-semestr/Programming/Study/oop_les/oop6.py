class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y

    def __hash__(self):
        return hash((self.x, self.y))


pt1 = Point(1, 2)
pt2 = Point(1, 3)
print(pt1 == pt2)
print(pt1 is pt2)
print(hash(pt1), hash(pt2))
