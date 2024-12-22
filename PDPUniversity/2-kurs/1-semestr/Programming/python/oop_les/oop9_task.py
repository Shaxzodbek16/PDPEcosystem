from abc import ABC, abstractmethod
from typing import override


class Animal(ABC):
    @abstractmethod
    def speak(self):
        raise NotImplementedError(self.__class__.__name__)

    @abstractmethod
    def move(self):
        raise NotImplementedError(self.__class__.__name__)


class Dog(Animal):
    @override
    def speak(self) -> str:
        return "Woof"

    @override
    def move(self) -> str:
        return f"{self.__class__.__name__} running"


class Cat(Animal):
    @override
    def speak(self) -> str:
        return "Meow"

    @override
    def move(self) -> str:
        return f"{self.__class__.__name__} running"


class Bird(Animal):
    @override
    def speak(self) -> str:
        return "bird voice"

    @override
    def move(self) -> str:
        return f"{self.__class__.__name__} flying"


def animal_behavior(animals: list[Animal]) -> None:
    for animal in animals:
        print(animal.speak())
        print(animal.move())


def main() -> None:
    animals = [Dog(), Cat(), Bird()]
    animal_behavior(animals)


if __name__ == "__main__":
    main()
