from .views import *
from django.urls import path

urlpatterns = [path("<str:name>/", say_hello), path("", say_hello_to_PDP)]
