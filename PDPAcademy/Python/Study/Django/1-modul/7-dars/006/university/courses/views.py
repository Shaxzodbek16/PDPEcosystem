from django.shortcuts import render
from .models import Teacher, Subject


def courses(request):
    # return HttpResponse("Hello, world!")
    context = {
        "Teachers": Teacher.objects.all(),
        "is_empty": not Teacher.objects.all().exists(),
    }
    return render(request, "courses/home.html", context=context)


def search_teacher(request):
    search = request.GET.get("search")
    if search is None:
        teachers = Teacher.objects.all()
    else:
        teachers = Teacher.objects.filter(first_name__icontains=search)

    return render(
        request,
        "courses/home2.html",
        {
            "teachers": teachers,
            "search": search,
            "is_empty": Teacher.objects.all().exists(),
        },
    )


def search_subject(request):
    context = {
        "Subjects": Subject.objects.all(),
        "is_empty": not Subject.objects.all().exists(),
    }
    return render(request, "subjects/subject.html", context=context)


def about_tacher(request, teacher):
    context = {"About_teacher": Teacher.objects.filter(teacher__contains=teacher)}
    return render(request, "subjects/about_teacher.html", context=context)
