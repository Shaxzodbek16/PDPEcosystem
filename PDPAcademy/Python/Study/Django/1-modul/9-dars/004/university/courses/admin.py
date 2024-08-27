from django.contrib import admin
from django.contrib import admin
from courses.models import *


@admin.register(Speciality)
class SpecialityAdmin(admin.ModelAdmin):
    search_fields = ('code', 'name', 'start_date', 'is_active')
    list_display = ('code', 'name', 'start_date', 'is_active')
    
    @property
    def get_is_active(self):
        return 'Active' if self.is_active else 'Inactive'


@admin.register(Teacher)
class TeacherAdmin(admin.ModelAdmin):
    search_fields = ('first_name', 'last_name')
    list_display = ('first_name', 'last_name', 'degree')
    list_filter = ('degree',)


@admin.register(Subject)
class SubjectAdmin(admin.ModelAdmin):
    search_fields = ('name','specialities', 'teachers')
    list_display = ('name','specialities', 'teachers')
    list_filter = ('specialities', 'teachers')
    autocomplete_fields = ('specialities', 'teachers')
