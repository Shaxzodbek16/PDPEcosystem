from django import forms

from .models import *


class CreateSpeciality(forms.Form):
    name = forms.CharField(max_length=60)
    code = forms.CharField(max_length=100)
    is_active = forms.BooleanField()


class CreateTeacher(forms.ModelForm):
    #     teacher_degrees=(
    #     ('A1', 'A1'),
    #     ('A2', 'A2'),
    #     ('B1', 'B1'),
    #     ('B2', 'B2'),
    #     ('B3', 'B3'),
    #     ('B4', 'B4'),
    # )
    #     first_name=forms.CharField(max_length=50)
    #     last_name=forms.CharField(max_length=50)
    #     degree=forms.ChoiceField(choices=teacher_degrees)
    class Meta:
        model = Teacher
        fields = ["first_name", "last_name", "degree"]


class CreateSubject(forms.ModelForm):
    # name=forms.CharField(max_length=60)
    # specialities=forms.ModelChoiceField(queryset=Speciality.objects.all())
    # teachers=forms.ModelChoiceField(queryset=Teacher.objects.all())
    class Meta:
        model = Subject
        fields = "__all__"
