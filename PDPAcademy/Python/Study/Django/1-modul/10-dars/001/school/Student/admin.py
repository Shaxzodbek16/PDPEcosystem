from django.contrib import admin
from .models import Students
from import_export.admin import ImportExportActionModelAdmin

@admin.register(Students)
class StudentsAdmin(ImportExportActionModelAdmin):
    list_display = ('student_id', 'ism', 'familya', 'yoshi', 'sinf', 'addres')
    search_fields = ('student_id', 'ism', 'sinf', )
    list_filter = ('yoshi', 'sinf',)
