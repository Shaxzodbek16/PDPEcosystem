from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('___admin___/', admin.site.urls),
    path('', include('about.urls')),
]
