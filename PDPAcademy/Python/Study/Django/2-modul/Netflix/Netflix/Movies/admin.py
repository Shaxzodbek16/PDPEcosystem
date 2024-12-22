from django.contrib import admin
from Movies.models import Movie, Actor
from Movies.models import Comment


@admin.register(Movie)
class MovieAdmin(admin.ModelAdmin):
    list_filter = ("actors", "year", "genre")
    search_fields = (
        "genre",
        "year",
        "actors",
        "imdb",
    )
    list_display = ("year", "genre", "imdb")


@admin.register(Actor)
class ActorAdmin(admin.ModelAdmin):
    list_display = ("name",)
    list_filter = ("name",)
    search_fields = ("name",)


@admin.register(Comment)
class CommentsAdmin(admin.ModelAdmin):
    list_display = ("movie_id", "text", "created_date", "user_id")
    list_filter = ("movie_id", "text", "created_date", "user_id")
    search_fields = ("movie_id", "text", "created_date", "user_id")
