class Student:
    def __init__(self, name,surname):
        self.name = name
        self.surname = surname

    @classmethod
    def from_full_name(cls, full_name):
        cls.name=full_name.split(' ')[0]
        cls.surname=full_name.split(' ')[1]
        return cls(cls.name, cls.surname)
    
    @property
    def name(self):
        return self.name
    
    @property
    def surname(self):
        return self.surname

student=Student.from_full_name("Muxtorov Shaxzodbek")
print(student.name)
print(student.surname)


#  I do it so difficultly
