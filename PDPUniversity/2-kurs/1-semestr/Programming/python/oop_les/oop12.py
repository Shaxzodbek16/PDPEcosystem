import math
from abc import abstractmethod, ABC
from typing import override


class Figure(ABC):
    @abstractmethod
    def area(self):
        raise NotImplementedError("The area method is not implemented")

    @abstractmethod
    def perimeter(self):
        raise NotImplementedError("The perimeter is not implemented")

    @classmethod
    def info(cls):
        return cls.__name__


class Rectangle(Figure):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    @override
    def area(self):
        return self.width * self.height

    @override
    def perimeter(self):
        return 2 * (self.width + self.height)


class Circle(Figure):
    def __init__(self, radius):
        self.radius = radius

    @override
    def perimeter(self):
        return f"{2 * self.radius * math.pi:.3f}"

    @override
    def area(self):
        return f"{self.radius * self.radius * math.pi:.3f}"


rectangle = Rectangle(4, 5)
print(rectangle.info())
print(rectangle.perimeter())
print(rectangle.area())

circle = Circle(10)
print(circle.info())
print(circle.area())
print(circle.perimeter())
