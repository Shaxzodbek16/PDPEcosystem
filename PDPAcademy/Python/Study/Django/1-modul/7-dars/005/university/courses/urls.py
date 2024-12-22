from .views import *
from django.urls import path

urlpatterns = [
    # path('', courses),
    path("teachers/", search_teacher)
]
