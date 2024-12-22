class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __call__(self, *args, **kwargs):
        print(args, kwargs)

    @staticmethod
    def area(r):
        return r**2 * 3.14


if __name__ == "__main__":
    pt = Point(1, 2)
    pt(1, 2, 3, a=5, b=6)
    a = pt.area(10)
    print(a)
    print("- " * 20)


class Student:
    counter = 0

    def __init__(self, name):
        self.name = name
        Student.counter -= -1

    @classmethod
    def show_count_student(cls):
        return cls.counter


if __name__ == "__main__":
    st = Student("Jasur")
    print(st.show_count_student())
    st2 = Student("Mahmud")
    print(st2.show_count_student())
    print("- " * 20)


class Counter:
    count = 0
    call_count = 0

    @classmethod
    def show_count(cls, param=None):
        if param is None:
            return Counter.count
        Counter.count += param
        return Counter.count

    def __call__(self, param=None, *args, **kwargs):
        self.show_count(1)
        if param:
            Counter.call_count += param
        return Counter.call_count


if __name__ == "__main__":
    ct = Counter()

    print(ct(10))
    print(ct(10))
    print(ct(35))
    print(Counter.show_count())
