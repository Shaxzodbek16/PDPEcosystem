class Vector:
    def __init__(self, x: int, y: int) -> None:
        self.x = x
        self.y = y

    def __repr__(self):
        return f"vector ({self.x},{self.y})"

    def __add__(self, other):
        # add two vectors
        return rf"Vactor({self.x-other.x},{self.y-other.y})"

    def __add__(self, other):
        x = self.x + other.x
        y = self.y + other.y
        return Vector(x, y)

    def __sub__(self, other):
        x = self.x - other.x
        y = self.y - other.y
        return Vector(x, y)


v1 = Vector(3, 4)
v2 = Vector(2, 4)
v3 = v1 - v2
print(v3)
