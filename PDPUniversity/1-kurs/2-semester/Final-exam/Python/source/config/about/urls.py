from django.urls import path
from .views import about, feedback, workers_info

urlpatterns = [
    path("", about, name="about"),
    path("feedback/", feedback, name="feedback"),
    path("workers_info/", workers_info, name="workers-info"),
]
