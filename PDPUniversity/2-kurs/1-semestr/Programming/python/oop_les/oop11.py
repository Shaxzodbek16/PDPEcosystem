# class Women:
#     woman_id = 'This is woman id'
#     woman_name = 'This is woman name'
#     woman_age = 'This is woman age'
#
#     def __init__(self, login, password):
#         self.login = login
#         self.password = password
#         self.meta = self.Meta(login + '@' + password)
#
#     class Meta:
#
#         def __init__(self, access):
#             self.access = access
#
# w = Women('root', "1234")
# print(w.__dict__)
# print(w.meta.__dict__)


def voice(self):
    return "RR RR"


Animal = type("Animal", (), {"name": "Alex", "age": 23, "type": "Lion", "voice": voice})

a = Animal()
print(a.name)
print(a.age)
print(a.type)
print(a.voice())
