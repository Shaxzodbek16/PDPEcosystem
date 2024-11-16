from typing import override


class Geom:
    name = "Geom"

    def draw(self):
        print("drawing Geom")


class Line(Geom):
    name = "Line"

    @override
    def draw(self):
        print("drawing Line")


class Circle(Geom):
    name = "Circle"

    @override
    def draw(self):
        print("drawing Circle")


class Rectangle(Geom):
    @override
    def draw(self):
        print("drawing Rectangle")


l = Line()
c = Circle()
r = Rectangle()

l.draw()
c.draw()
r.draw()
print('Names:',r.name, c.name, r.name)
