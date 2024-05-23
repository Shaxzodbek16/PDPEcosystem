class Student:
    def __init__ (self,name:str, age:int):
        self.name=name
        self.age=age
    @property
    def about(self) -> str:
        return f"Hi, I am {self.name}\nI am {self.age} years old."
   
    def __str__(self) -> str:
        return self.name
    def __repr__(self) -> str:
        return self.name
    def __eq__(self, other: object) -> bool:
        return self.age==other.age
    def __gt__(self, other: object) -> bool:
        return self.age > other.age
    def __lt__(self, other: object) -> bool:
        return self.age < other.age


Herbiona=Student("Herbiona",21)
Jasur=Student("Jasur",32)
mahmud=Student("Mahmid",21)

print(Herbiona>Jasur) #False
print(Herbiona<Jasur) #True
print(mahmud==Herbiona) #True 
