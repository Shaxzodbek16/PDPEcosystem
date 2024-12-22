class Animal:
    def __init__(self, name, species):
        self.name = name
        self.species = species

    def info(self):
        return f"Giving info by {self.__class__.__name__}..."


class Flyable:
    def __init__(self, wing_span: float):
        self.wing_span = wing_span

    def fly(self):
        return f"Flying {self.__class__.__name__}..."


class Swim:

    def __init__(self, swimming_speed: int):
        self.swimming_speed = swimming_speed

    def swim(self):
        return f"{self.__class__.__name__} is swimming..."


class Duck(Animal, Swim, Flyable):

    def __init__(self, name, species, swimming_speed, wing_span):
        super().__init__(name=name, species=species)
        Swim.__init__(self, swimming_speed)
        Flyable.__init__(self, wing_span)

    def quack(self):
        return f"{self.__class__.__name__} is quacking..."


class Penguin(Animal, Swim):

    def __init__(self, *, name, species, swimming_speed):
        super().__init__(name, species)
        Swim.__init__(self, swimming_speed)

    def slide(self):
        return f"{self.__class__.__name__} is sliding..."


class Penguin2(Animal, Swim):
    def slide(self):
        return f"{self.__class__.__name__} is sliding..."


d = Duck("Donald", "Duck", 3.0, 0.2)
p = Penguin(name="Bob", species="Penguin", swimming_speed=3.0)
p2 = Penguin(name="Bob", species="Penguin", swimming_speed=3.0)
print(d.info(), p.swim())
print(p.swimming_speed)
