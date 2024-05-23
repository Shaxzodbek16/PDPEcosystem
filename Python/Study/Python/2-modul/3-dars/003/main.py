"""Yangi Teacher classini hosil qiling va u 
dars mobaynida yaratilgan User classidan voris 
olsin.  Dars mobaynida yaratilgan Mentor classi 
User class dan emas Teacher classdan voris olsin. 
Teacher classiga subclass bo'lgan yangi Assistant 
classini ham yarating.
"""
class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email

    def login(self):
        print(f"Hello {self.name}.")
        print(f"Loged in with email is {self.email}.")
    def logout(self):
        print(f"Bye {self.name}")
        print(f"Logged out with email is {self.email}.")
    
    def check_home(self):
        print(f"Checked by {self.name}")

    def give_home(self):
        print(f"Gave by {self.name}")
    
class Teacher(User):
    def teach_childer(self):
        print(f"{self.name} is teaching childer")
    
class Mentor(Teacher):
    def supporters_childer(self):
        print(f"{self.name} is supporters childer")

class Assistant(Teacher):
    def help_teacher(self):
        print(f"{self.name} is helping teacher")

teacher=Teacher("Teacher", "teacher@gmail.com")
assistant=Assistant("Assistant", "assistant@gmail.com")
mentor=Mentor("Mentor", "mentor@gmail.com")
print("\n\n\n\n\n\n\n")
print("================================================================")
teacher.login()
teacher.logout()
teacher.check_home()
teacher.give_home()
teacher.teach_childer()
print("================================================================")
mentor.login()
mentor.logout()
mentor.check_home()
mentor.give_home()
mentor.teach_childer()
mentor.supporters_childer()
print("================================================================")
assistant.login()
assistant.logout()
assistant.check_home()
assistant.give_home()
assistant.teach_childer()
assistant.help_teacher()
print("================================================================")
print("\n\n\n\n\n\n\n")