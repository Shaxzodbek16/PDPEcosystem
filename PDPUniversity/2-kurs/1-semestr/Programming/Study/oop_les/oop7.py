class Student:
    def __init__(self, name, marks):
        self.name = name
        self.marks = marks

    def __getitem__(self, item):
        return self.marks[item]

    def __setitem__(self, key, value):
        self.marks[key] = value

    def __delitem__(self, key):
        del self.marks[key]

    def __iter__(self):
        return iter(self.marks)

    def __len__(self):
        return len(self.marks)


st = Student('Jasur', [1, 2, 3, 4, 5])
