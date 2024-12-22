from .views import *
from django.urls import path

urlpatterns = [
    path("", courses),
    path("teachers/", search_teacher),
    path("subject/", search_subject),
    path("subject/<str:name>/", about_tacher),
]
