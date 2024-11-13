class Person:
    __name : str = 'Person'

    def get_name(self):
        return self.__name

    class Meta:
        abstract = True

class Student(Person):
    def __init__(self, name):
        pr = Person
        pr._Person__name = name
st = Student("Ruslanbek")
print(st.get_name())
