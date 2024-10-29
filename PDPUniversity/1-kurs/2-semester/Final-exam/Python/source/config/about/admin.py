from django.contrib import admin
from .models import Company, AboutWorker, Feedback


@admin.register(Company)
class CompanyAdmin(admin.ModelAdmin):
	list_display = ('id', 'title', 'description', 'date')
	search_fields = ('title', 'description',)
	list_filter = ('id', 'title', 'description', 'date')


@admin.register(Feedback)
class FeedbackAdmin(admin.ModelAdmin):
	list_display = ('id', 'name', 'email', 'date', 'message')
	search_fields = ('name', 'email', 'message')
	list_filter = ('date',)


@admin.register(AboutWorker)
class AboutWorkerAdmin(admin.ModelAdmin):
	list_display = ('id', 'firstname', 'lastname', 'age', 'place')
	search_fields = ('firstname', 'lastname', 'age', 'place')
	list_filter = ('age', 'place')
