class Person:
    __name: str = 'Person'

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


def make(num):
    arr = []
    for i in range(num):
        sub_arr = []
        for j in range(num):
            if (i + j) % 2 == 0:
                sub_arr.append(0)
                continue
            sub_arr.append(1)
        arr.append(sub_arr)
    return arr


for i in make(8):
    print(i)
