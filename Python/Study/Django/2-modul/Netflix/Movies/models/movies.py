from django.db import models
from .options import choices_movies


class Movie(models.Model):
    name = models.CharField(max_length=100)
    year = models.IntegerField()
    imdb = models.FloatField()  # the film rating between 1 and 10.
    genre = models.CharField(choices=choices_movies, max_length=50)
    actors = models.ManyToManyField('Movies.Actor', related_name='movies')

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'Movie'
