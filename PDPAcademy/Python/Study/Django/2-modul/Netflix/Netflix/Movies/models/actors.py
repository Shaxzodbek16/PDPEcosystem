from django.db import models
from .options import gender_choices

# from .movies import Movie buni ham import qilmagan ma'qul, sabab 9-qator kommetariya.


class Actor(models.Model):
    name = models.CharField(max_length=50)
    birthdate = models.DateField()
    gender = models.CharField(choices=gender_choices, max_length=10, default="M")
    # movies = models.ManyToManyField(Movie) bunaqa qo'shihs natijasida cycling error beradi, yani qayta qayta
    # chaqiradi.

    def __str__(self):
        return self.name

    class Meta:
        db_table = "Actors"
