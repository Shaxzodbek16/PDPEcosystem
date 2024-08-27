from django.urls import path
from .views import *

urlpatterns = [
    path('', index, name='index'),
    path('student/add/', add_student, name='add_student'),
    path('student/show/', show_student, name='show_student'),
    path('student/update/', update_student, name='update_student'),
    path('student/delete/', delete_student, name='delete_student'),
    ##########################
    path('student/search/', search_student, name='search_student'),
]
