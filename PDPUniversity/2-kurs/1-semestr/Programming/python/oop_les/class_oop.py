class Cats:
    name = "Alex"
    color = "black"
    age = 2

    def set_name(self, new_name, new_color, new_age):
        self.name = new_name
        self.color = new_color
        self.age = new_age

    def meow(self):
        print("Meow", self.name)

    def get_name(self):
        return self.name, self.color, self.age


ct = Cats()
ct.set_name("Alex", "blue", 2)
setattr(ct, "color", "red")
setattr(ct, "age", 40)
# setattr(ct, 'weight', 40)
print(ct.__dict__)
print(ct.get_name())
print(getattr(ct, "color"))  # go to command + tap the func and read docs
print(getattr(ct, "name"))
print(getattr(ct, "age"))
print(getattr(ct, "weight", False))
print(hasattr(ct, "color"))
delattr(ct, "color")
print(ct.__dict__)


class Dog:
    name: str = None
    age: int = None
    weight: float = None
    breed: str = None

    def set_attributes(self, other_name, other_age, other_weight, other_breed):
        self.name = other_name
        self.age = other_age
        self.weight = other_weight
        self.breed = other_breed

    def get_attributes(self):
        return self.name, self.age, self.weight, self.breed

    def bark(self):
        if self.weight:
            return "Woof" + self.breed
        return "Set weight"


dog = Dog()

dog.set_attributes("Buddy", 5, 20.5, "Golden Retriever")

name, age, weight, breed = dog.get_attributes()
print(f"Name: {name}, Age: {age}, Weight: {weight}, Breed: {breed}")

print("Bark sound:", dog.bark())


class Singleton:
    _instance = None

    def __new__(cls, *args, **kwargs):
        if not cls._instance:
            cls._instance = super(Singleton, cls).__new__(cls)
        return cls._instance


obj1 = Singleton()
obj2 = Singleton()

print(obj1 is obj2)


class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        print("Start")

    def aggregate_function(self, x, y):
        return self.x + x, self.y + y

    def __del__(self):
        del self.x, self.y
        print("End")


pt = Point(1, 2)
print(pt.x, pt.y)
print(pt.aggregate_function(1, 2))
print(pt.x, pt.y)


class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

    def perimeter(self):
        return 2 * self.width + 2 * self.height


rectangle = Rectangle(5, 5)
print(rectangle.area())
print(rectangle.perimeter())

from abc import ABC, abstractmethod
import math


class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass


class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def area(self):
        return math.pi * self.radius**2

    def perimeter(self):
        return 2 * math.pi * self.radius

    def __str__(self):
        return f"Circle(radius={self.radius})"


class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

    def perimeter(self):
        return 2 * (self.width + self.height)

    def __str__(self):
        return f"Rectangle(width={self.width}, height={self.height})"


class Square(Rectangle):
    def __init__(self, side_length):
        super().__init__(side_length, side_length)

    def __str__(self):
        return f"Square(side_length={self.width})"


class Polygon(Shape):
    def __init__(self, side_length, num_sides):
        self.side_length = side_length
        self.num_sides = num_sides

    def area(self):
        perimeter = self.perimeter()
        apothem = self.side_length / (2 * math.tan(math.pi / self.num_sides))
        return (perimeter * apothem) / 2

    def perimeter(self):
        return self.side_length * self.num_sides

    def __str__(self):
        return f"Polygon(side_length={self.side_length}, num_sides={self.num_sides})"


shapes = [Circle(5), Rectangle(4, 6), Square(4), Polygon(3, 5)]

for shape in shapes:
    print(shape)
    print(f"Area: {shape.area()}")
    print(f"Perimeter: {shape.perimeter()}\n")


class Point:
    instance_count = 0

    def __new__(cls, instance_count=None, *args, **kwargs):
        cls.instance_count += 1
        instance_count += 1
        return super().__new__(cls)

    def __init__(self, x, y):
        self.x = x
        self.y = y


pt1 = Point(1, 2)
pt2 = Point(3, 4)
pt3 = Point(5, 6)
print(pt3.instance_count)


class Circle:
    __pi = 3.141592653589793

    def __init__(self, radius):
        self.radius = radius

    def length_circle(self):
        return 2 * self.radius * self.__pi


circle = Circle(5)
print(circle.length_circle())


class Rectangle:
    def __init__(self, width, height):
        self.__height = height
        self.__width = width

    def area(self):
        return self.__width * self.__height

    def perimeter(self):
        return 2 * (self.__width + self.__height)

    def is_square(self):
        return self.__width == self.__height

    def resize(self, new_width, new_height):
        self.__width = new_width
        self.__height = new_height


rectangle = Rectangle(5, 5)
print(rectangle.area())
print(rectangle.perimeter())
print(rectangle.is_square())
rectangle.resize(6, 5)

print(rectangle.area())
print(rectangle.perimeter())
print(rectangle.is_square())


class Person(object):
    def __init__(self, name, age):
        self.__name = name
        self.__age = age

    @property
    def name(self):
        return self.__name

    @name.setter
    def name(self, name):
        self.__name = name

    @name.deleter
    def name(self):
        del self.__name


ps = Person("John", 24)
print(ps.name)
