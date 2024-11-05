class Cats:
    name = 'Alex'
    color = 'black'
    age = 2

    def set_name(self, name, color, age):
        self.name = name
        self.color = color
        self.age = age


    def meow(self):
        print('Meow', self.name)

    def get_name(self):
        return self.name, self.color, self.age



ct = Cats()
ct.set_name('Alex', 'blue', 2)
setattr(ct, 'color', 'red')
setattr(ct, 'age', 40)
# setattr(ct, 'weight', 40)
print(ct.__dict__)
print(ct.get_name())
print(getattr(ct, 'color')) # go to command + tap the func and read docs
print(getattr(ct, 'name'))
print(getattr(ct, 'age'))
print(getattr(ct, 'weight', False))
print(hasattr(ct, 'color'))
delattr(ct, 'color')
print(ct.__dict__)
