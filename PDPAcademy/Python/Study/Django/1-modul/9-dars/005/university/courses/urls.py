from .views import *
from django.urls import path

urlpatterns = [
   path('', courses),
   path('teachers/', search_teacher, name='teachers'),
   path('subject/', search_subject, name='subjects'),
   #path('subject/<str:name>/', about_tacher, name='subject-search'),
   path('speciality/create/', speciality_create, name='speciality-create'),
   path('teacher/create/',teacher_create, name='teacher-create'),  
   path('subject/create/', subject_create, name='subject-create'),
]