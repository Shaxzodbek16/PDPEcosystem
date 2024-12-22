# class


class Student:
    def __init__(
        self, f_name: str, l_name: str, age: int, level: int, subjects: list[str]
    ):
        self.f_name = f_name
        self.l_name = l_name
        self.age = age
        self.level = level
        self.subjects = subjects

    @property
    def about(self):
        return f"Hi, I am {self.f_name} {self.l_name}.\nI am {self.age} years old.\n I am {self.level}-level students.\nI am reading {[ subject for subject in self.subjects]}"


Jonh = Student("Jonh", "Smith", 19, 1, ["Python", "Flutter", "CSS", "JavaScript"])


print(Jonh.about)
