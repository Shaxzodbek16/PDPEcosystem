from django.shortcuts import render
from .models import Teacher

# def courses(request):
#     # return HttpResponse("Hello, world!")
#     context={
#         'Teachers': Teacher.objects.all(),
#         'is_empty': not Teacher.objects.all().exists(),
#     }
#     return render(request, 'courses/home.html', context=context)


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
