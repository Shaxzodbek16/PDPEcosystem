from django.db import models

class Speciality(models.Model):
    name = models.CharField(max_length=60)
    code = models.CharField(max_length=100)
    start_date = models.DateField(auto_now_add=True)
    is_active = models.BooleanField(default=True)
