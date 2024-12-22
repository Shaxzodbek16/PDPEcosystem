from django import forms
from .models import *


class CreateSpeciality(forms.Form):
    name = forms.CharField(max_length=60)
    code = forms.CharField(max_length=100)
    is_active = forms.BooleanField()
    # class Meta:
    #     model = Speciality
    #     fields = '__all__'
