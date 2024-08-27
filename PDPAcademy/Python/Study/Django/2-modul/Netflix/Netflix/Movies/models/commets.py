from django.db import models
from .movies import Movie
from .users import User


class Comment(models.Model):
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    text = models.TextField()
    created_date = models.DateTimeField(auto_now_add=True, blank=True, null=True)

    def __str__(self):
        text = self.text[:15]
        return f"{text} by {self.user_id} to {self.movie_id}"

    class Meta:
        ordering = ['created_date']
        db_table = 'Comments'
