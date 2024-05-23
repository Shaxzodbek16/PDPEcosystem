from django.contrib import admin
from django.contrib import admin
from courses.models import *
from import_export.admin import ImportExportActionModelAdmin


def mark_specialitiy_is_unactive_as_returned(modeladmin, request, queryset):
    queryset.update(is_active=False)


def mark_specialitiy_is_active_as_returned(modeladmin, request, queryset):
    queryset.update(is_active=True)
    
    
@admin.register(Speciality)
class SpecialityAdmin(ImportExportActionModelAdmin):
    search_fields = ('code', 'name', 'start_date', 'is_active')
    list_display = ('code', 'name', 'start_date', 'is_active')
    actions = (mark_specialitiy_is_unactive_as_returned, mark_specialitiy_is_active_as_returned)
    
    
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
    
