import datetime
import time
from django.shortcuts import redirect, render
from .models import Teacher, Subject, Speciality
from .forms import *
def courses(request):
    # return HttpResponse("Hello, world!")
    context={
        'Teachers': Teacher.objects.all(),
        'is_empty': not Teacher.objects.all().exists(),
    }
    return render(request, 'courses/home.html', context=context)

def search_teacher(request):
    search=request.GET.get('search')
    if search is None:
        teachers=Teacher.objects.all()
    else:
        teachers=Teacher.objects.filter(first_name__icontains=search)

    return render(request, 
                  'courses/home2.html', 
                  {
                      "teachers":teachers,
                      "search":search, 
                      'is_empty': Teacher.objects.all().exists(),
                    }
                  )

def search_subject(request):
    context={
        'Subjects': Subject.objects.all(),
        'is_empty': not Subject.objects.all().exists(),
    }
    return render(request, 'subjects/subject.html', context=context)

# def about_tacher(request, teacher):
#     context={
#         'About_teacher':Teacher.objects.filter(teacher__contains=teacher)
#     }
#     return render(request, 'subjects/about_teacher.html', context=context)

        
def speciality_create(request):
    if request.method=='GET':
        form=CreateSpeciality()
        # return render(request, 'speciality/speciality_create.html',{'form':form})
    else:
        form=CreateSpeciality(request.POST)
        if form.is_valid():
            form.save()
            data=form.cleaned_data
            speciality=Speciality.objects.create(
                name=data['name'],
                code=data['code'],
                start_date=[datetime.datetime.now()],
                is_active=data['is_active'],


            )
            return redirect("speciality-create")

    return render(request, 'speciality/speciality_create.html',{'form':form})
    


def teacher_create(request):
    if request.method=="GET":
        form = Teacher()
    else:
        form=CreateTeacher(request.POST)
        if form.is_valid():
            form.save()
            data=form.cleaned_data
            #print(data)
            teacher=Teacher.objects.create(
                first_name=data['first_name'],
                last_name=data['last_name'],
                degree=data['degree'],
            )
            return redirect('teacher-create')
    return render(request, 'teacher/teacher_create.html', {'form':form})
    
def subject_create(request):
    if request.method=="GET":
        form=Subject()
    else:
        form=CreateSubject(request.POST)
        if form.is_valid():
            form.save()
            data=form.cleaned_data
            subject=Subject.objects.create(
                name=data['name'],
                specialities=data['specialities'],
                teachers=['teachers']
            )
            return redirect('subject-create')
    return render(request, 'subjects/subject_create.html',{'form':form})

            