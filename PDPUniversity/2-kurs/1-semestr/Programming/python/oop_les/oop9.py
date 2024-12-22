from typing import override
from abc import ABC, abstractmethod


class Human(ABC):
    def __init__(self, name):
        self.name = name

    @abstractmethod
    def voice(self):
        raise NotImplementedError(f"Set voice() for {self.__class__.__name__}")


class Student(Human):
    def __init__(self, name):
        super().__init__(name)
        self.name = name

    @override
    def voice(self):
        return f"Hello by {self.name} who is student"


class Teacher(Human):
    def __init__(self, name):
        super().__init__(name)
        self.name = name

    @override
    def voice(self):
        return f"Hello by {self.name} who is teacher"


class Director(Human):
    def __init__(self, name):
        super().__init__(name)
        self.name = name

    @override
    def voice(self):
        return f"Hello by {self.name} who is director"


people = [Student("Shaxzodbek"), Teacher("Botir"), Director("Odilbek")]

for person in people:
    print(person.voice())
