from django.db import models


class Speciality(models.Model):
    name = models.CharField(max_length=60)
    code = models.CharField(max_length=100)
    start_date = models.DateField(auto_now_add=True)
    is_active = models.BooleanField(default=True)
    
    
    def __str__(self):
        return self.name
    
    
    class Meta:
        db_table = 'Speciality'


class Teacher(models.Model):
    first_name=models.CharField(max_length=50)
    last_name=models.CharField(max_length=50)
    degree=models.CharField(max_length=30)
    
    def __str__(self) -> str:
        return f"{self.name} {self.last_name} {self.degree}"
    
    class Meta:
        db_table = 'Teacher'