from abc import ABC, abstractmethod
from typing import override


class Employee(ABC):
    @abstractmethod
    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def get_salary(self):
        return self.salary

    def get_name(self):
        return self.name


class Programmer(Employee):
    @override
    def __init__(self, name, salary):
        super().__init__(name, salary)
        self.name = name
        self.salary = salary


class Designer(Employee):
    @override
    def __init__(self, name, salary):
        super().__init__(name, salary)
        self.name = name
        self.salary = salary


class Worker(Employee):
    @override
    def __init__(self, name, salary):
        super().__init__(name, salary)
        self.name = name
        self.salary = salary


programmer = Programmer("Shaxzodbek", 20000)
designer = Designer("Nurbek", 1000)
worker = Worker("Jasur", 500)

print(programmer.get_name(), programmer.get_salary())

print(designer.get_name(), designer.get_salary())

print(worker.get_salary(), worker.get_name())
