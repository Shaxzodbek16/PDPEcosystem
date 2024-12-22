from .views import *
from django.urls import path

urlpatterns = [
    path("", courses),
    path("teachers/", search_teacher, name="teachers"),
    path("subject/", search_subject, name="subjects"),
    path("subject/<str:name>/", about_tacher, name="subject-search"),
    path("speciality/create/", speciality_create, name="speciality-create"),
]
