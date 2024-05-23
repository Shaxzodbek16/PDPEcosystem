from django.db import models


class Company(models.Model):
	title = models.CharField(max_length=100, blank=False, null=False)
	description = models.TextField(null=False, blank=False)
	picture = models.ImageField(upload_to='static/images/company', blank=False, null=False)
	date = models.DateField(auto_now_add=True)

	def __str__(self):
		return self.title

	class Meta:
		db_table = 'Company'
		ordering = ['date']
		verbose_name = 'Company'


class AboutWorker(models.Model):
	firstname = models.CharField(max_length=100, blank=False, null=False)
	lastname = models.CharField(max_length=100, blank=False, null=False)
	picture = models.ImageField(upload_to='static/images/workers', blank=False, null=False)
	age = models.IntegerField(blank=False, null=False)
	place = models.CharField(max_length=100, blank=False, null=False)

	def __str__(self):
		return self.firstname

	class Meta:
		db_table = 'AboutWorker'
		ordering = ['firstname']


class Feedback(models.Model):
	email = models.EmailField(blank=False, null=False)
	date = models.DateField(auto_now_add=True)
	name = models.CharField(max_length=100, blank=False, null=False)
	message = models.TextField(blank=False, null=False)

	def __str__(self):
		return self.name

	class Meta:
		db_table = 'Feedback'
		ordering = ['date']
